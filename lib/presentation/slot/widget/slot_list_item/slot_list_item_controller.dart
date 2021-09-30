import 'dart:async';
import 'dart:isolate';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/presentation/slot/widget/slot_list/slot_list_controller.dart';
import 'package:random_slot_game/presentation/slot/widget/slot_list_item/slot_list_item_state.dart';

final slotListItemController = StateNotifierProvider.autoDispose
    .family<SlotListItemController, SlotListItemState, SlotListItemType>(
  (ref, type) {
    ref.onDispose(() {
      /// dispose時にisolateをkill
      _isolates[type]?.kill();
    });
    final listState = ref.watch(slotListController).state;
    final state =
        listState.itemStates.singleWhere((element) => element.type == type);
    return SlotListItemController(state, ref.read);
  },
);

class SlotListItemController extends StateNotifier<SlotListItemState> {
  SlotListItemController(
    SlotListItemState state,
    this._reader,
  ) : super(state);

  final Reader _reader;

  Future<void> endlessChange() async {
    final receivePort = ReceivePort();
    receivePort.listen((message) {
      final String value = message;
      if (mounted) {
        state = state.copyWith(value: value);
      }
    });
    final param =
        _Param(parentPort: receivePort.sendPort, values: state.values);
    _isolates[state.type] = await Isolate.spawn(_generateValue, param);
    state = state.copyWith(isStopped: false);
  }

  Future<void> stopSlot() async {
    state = state.copyWith(isStopped: true);
    _isolates[state.type]?.kill();
  }
}

/// 並列処理でvalueを生成
Future<void> _generateValue(_Param _param) async {
  int index = 0;
  final values = _param.values;
  final length = values.length;
  const speed = 50;
  Timer.periodic(const Duration(milliseconds: speed), (_) {
    final value = values[index++];
    _param.parentPort.send(value);
    if (index >= length) index = 0;
  });
}

/// isolate管理Map
final Map<SlotListItemType, Isolate> _isolates = {};

class _Param {
  final SendPort parentPort;
  final List<String> values;

  _Param({
    required this.parentPort,
    required this.values,
  });
}
