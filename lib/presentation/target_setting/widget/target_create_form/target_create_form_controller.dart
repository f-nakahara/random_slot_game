import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/core/l10n/app_localization.dart';
import 'package:random_slot_game/interactor/target/target_interactor.dart';
import 'package:random_slot_game/interactor/target/target_interactor_provider.dart';
import 'package:random_slot_game/presentation/target_setting/widget/target_create_form/target_create_form_state.dart';

final targetCreateFormController = StateNotifierProvider.autoDispose<
    TargetCreateFormController, TargetCreateFormState>(
  (ref) {
    final targets =
        ref.watch(targetInteractorProvider).data?.value.targets ?? [];
    final targetNames = targets.map((e) => e.name).toList();
    return TargetCreateFormController(
      ref.read(targetInteractorProvider.notifier),
      targetNames: targetNames,
    );
  },
);

class TargetCreateFormController extends StateNotifier<TargetCreateFormState> {
  TargetCreateFormController(
    this._interactor, {
    required List<String> targetNames,
  })  : _targetNames = targetNames,
        super(const TargetCreateFormState());

  final TargetInteractor _interactor;
  final maxNameLength = 20;
  final List<String> _targetNames;

  /// プレイヤーを作成する
  Future<void> create({required String name}) async {
    await _interactor.createTarget(name: name);
  }

  /// バリデーション
  String? validate(String? value, AppLocalization localization) {
    if (value == null || value.isEmpty) {
      return localization.emptyErrorText;
    } else if (value.length > maxNameLength) {
      return localization.maxLengthErrorText(maxNameLength);
    } else if (_targetNames.contains(value)) {
      return localization.duplicateErrorText;
    }
  }

  void onChanged(String? value, AppLocalization localization) {
    _updateEnableState(value, localization);
  }

  void _updateEnableState(String? value, AppLocalization localization) {
    final result = validate(value, localization);
    final isEnabled = result == null;
    state = state.copyWith(isEnabled: isEnabled);
  }
}
