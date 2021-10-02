import 'package:random_slot_game/core/l10n/app_localization.dart';

class LocalizationUtil {
  LocalizationUtil._();

  static late AppLocalization _localization;
  static AppLocalization get localization => _localization;

  static Future<void> init(AppLocalization localization) async {
    _localization = localization;
  }
}
