import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/domain/repository/i_target_repository.dart';

import 'target_interactor_state.dart';

class TargetInteractor
    extends StateNotifier<AsyncValue<TargetInteractorState>> {
  TargetInteractor({
    required ITargetRepository repository,
  })  : _repository = repository,
        super(const AsyncLoading());
  final ITargetRepository _repository;

  /// 全てのターゲットを取得する
  Future<void> getAllTargetList() async {
    final targets = await _repository.findAll();
    state = AsyncData(TargetInteractorState(targets: targets));
  }
}
