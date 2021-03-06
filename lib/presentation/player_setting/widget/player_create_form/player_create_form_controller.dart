import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/core/l10n/app_localization.dart';
import 'package:random_slot_game/interactor/player/player_interactor.dart';
import 'package:random_slot_game/interactor/player/player_interactor_provider.dart';
import 'package:random_slot_game/presentation/player_setting/widget/player_create_form/player_create_form_state.dart';

final playerCreateFormController = StateNotifierProvider.autoDispose<
    PlayerCreateFormController, PlayerCreateFormState>(
  (ref) {
    final players =
        ref.watch(playerInteractorProvider).data?.value.players ?? [];
    final playerNames = players.map((e) => e.name).toList();
    return PlayerCreateFormController(
      ref.read(playerInteractorProvider.notifier),
      playerNames: playerNames,
    );
  },
);

class PlayerCreateFormController extends StateNotifier<PlayerCreateFormState> {
  PlayerCreateFormController(
    this._interactor, {
    required List<String> playerNames,
  })  : _playerNames = playerNames,
        super(const PlayerCreateFormState());

  final PlayerInteractor _interactor;
  final maxNameLength = 20;
  final List<String> _playerNames;

  /// プレイヤーを作成する
  Future<void> create({required String name}) async {
    await _interactor.createPlayer(name: name);
  }

  /// バリデーション
  String? validate(String? value, AppLocalization localization) {
    if (value == null || value.isEmpty) {
      return localization.emptyErrorText;
    } else if (value.length > maxNameLength) {
      return localization.maxLengthErrorText(maxNameLength);
    } else if (_playerNames.contains(value)) {
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
