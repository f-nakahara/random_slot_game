import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/core/l10n/app_localization.dart';
import 'package:random_slot_game/interactor/action/action_interactor.dart';
import 'package:random_slot_game/interactor/action/action_interactor_provider.dart';
import 'package:random_slot_game/presentation/action_setting/widget/action_create_form/action_create_form_state.dart';

final actionCreateFormController = StateNotifierProvider.autoDispose<
    ActionCreateFormController, ActionCreateFormState>(
  (ref) {
    final actions =
        ref.watch(actionInteractorProvider).data?.value.actions ?? [];
    final actionNames = actions.map((e) => e.name).toList();
    return ActionCreateFormController(
      ref.read(actionInteractorProvider.notifier),
      actionNames: actionNames,
    );
  },
);

class ActionCreateFormController extends StateNotifier<ActionCreateFormState> {
  ActionCreateFormController(
    this._interactor, {
    required List<String> actionNames,
  })  : _actionNames = actionNames,
        super(const ActionCreateFormState());

  final ActionInteractor _interactor;
  final maxNameLength = 100;
  final List<String> _actionNames;

  /// プレイヤーを作成する
  Future<void> create({required String name}) async {
    await _interactor.createAction(name: name);
  }

  /// バリデーション
  String? validate(String? value, AppLocalization localization) {
    if (value == null || value.isEmpty) {
      return localization.emptyErrorText;
    } else if (value.length > maxNameLength) {
      return localization.maxLengthErrorText(maxNameLength);
    } else if (_actionNames.contains(value)) {
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
