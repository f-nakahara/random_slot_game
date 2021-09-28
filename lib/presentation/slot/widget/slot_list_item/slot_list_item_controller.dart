import 'dart:async';
import 'dart:isolate';
import 'dart:math';

import 'package:hooks_riverpod/hooks_riverpod.dart';

final slotListItemViewModel = StateNotifierProvider.autoDispose
    .family<SlotListItemViewModel, SlotListItemState, SlotListItemType>(
  (ref, type) {
    ref.onDispose(() {
      /// dispose時にisolateをkill
      _isolates[type]?.kill();
    });
    late final List<String> values;
    switch (type) {
      case SlotListItemType.player:
        values = ref
                .watch(playerController)
                .data
                ?.value
                .map((e) => e.name)
                .toList() ??
            [];
        break;
      case SlotListItemType.target:
        values = ref
                .watch(targetController)
                .data
                ?.value
                .map((e) => e.name)
                .toList() ??
            [];
        break;
      case SlotListItemType.penalty:
        values = ref
                .watch(penaltyController)
                .data
                ?.value
                .map((e) => e.name)
                .toList() ??
            [];
    }
    final value = values[Random().nextInt(values.length)];
    final state = SlotListItemState(type: type, value: value);
    return SlotListItemViewModel(
      state,
      values: values,
      type: type,
    );
  },
);

class SlotListItemViewModel extends StateNotifier<SlotListItemState> {
  SlotListItemViewModel(
    SlotListItemState state, {
    required this.values,
    required this.type,
  }) : super(state) {
    endlessChange();
  }

  final List<String> values;
  final SlotListItemType type;

  Future<void> endlessChange() async {
    final receivePort = ReceivePort();
    receivePort.listen((message) {
      final String value = message;
      if (mounted) {
        state = state.copyWith(value: value);
      }
    });
    final param = _Param(parentPort: receivePort.sendPort, values: values);
    _isolates[type] = await Isolate.spawn(_generateValue, param);
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
