import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/core/l10n/app_localization.dart';
import 'package:random_slot_game/interactor/action/action_interactor.dart';
import 'package:random_slot_game/interactor/action/action_interactor_provider.dart';
import 'package:random_slot_game/presentation/action_setting/widget/action_create_form/action_create_form_state.dart';

final actionCreateFormController = StateNotifierProvider.autoDispose<
    ActionCreateFormController, ActionCreateFormState>(
  (ref) {
    final penalties = ref.watch(actionInteractorProvider).data?.value ?? [];
    final playerNames = penalties.map((e) => e.name).toList();
    return ActionCreateFormController(
      ref.read(actionInteractorProvider.notifier),
      playerNames: playerNames,
    );
  },
);

class ActionCreateFormController extends StateNotifier<ActionCreateFormState> {
  ActionCreateFormController(
    this._interactor, {
    required List<String> playerNames,
  })  : _penaltyNames = playerNames,
        super(const ActionCreateFormState());

  final ActionInteractor _interactor;
  final maxNameLength = 100;
  final List<String> _penaltyNames;

  /// プレイヤーを作成する
  Future<void> create({required String name}) async {
    await _interactor.createPenalty(name: name);
  }

  /// バリデーション
  String? validate(String? value, AppLocalization localization) {
    if (value == null || value.isEmpty) {
      return localization.emptyErrorText;
    } else if (value.length > maxNameLength) {
      return localization.maxLengthErrorText(maxNameLength);
    } else if (_penaltyNames.contains(value)) {
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
