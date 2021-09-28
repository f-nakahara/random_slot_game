import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/domain/entity/target/target.dart';
import 'package:random_slot_game/domain/repository/i_target_repository.dart';

class TargetInteractor extends StateNotifier<AsyncValue<List<Target>>> {
  TargetInteractor({
    required ITargetRepository repository,
  })  : _repository = repository,
        super(const AsyncLoading());
  final ITargetRepository _repository;

  /// 全てのターゲットを取得する
  Future<List<Target>> getAllTargetList() async {
    final targets = await _repository.findAll();
    return targets;
  }
}
