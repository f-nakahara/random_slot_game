


import 'app_localization.dart';

/// The translations for English (`en`).
class AppLocalizationEn extends AppLocalization {
  AppLocalizationEn([String locale = 'en']) : super(locale);

  @override
  String get player => 'Player';

  @override
  String get action => 'Action';

  @override
  String checkExplanation(Object subject) {
    return 'Please check the $subject to use.';
  }

  @override
  String addExplanation(Object subject) {
    return 'Press the 「+」 button to add a new $subject.';
  }

  @override
  String createTitle(Object subject) {
    return 'Create $subject';
  }

  @override
  String get deletionNotice => 'Do you really want to delete this?';

  @override
  String get delete => 'Delete';

  @override
  String get cancel => 'Cancel';

  @override
  String get close => 'Close';

  @override
  String get create => 'Create';

  @override
  String get emptyErrorText => 'Please fill in the value';

  @override
  String maxLengthErrorText(Object length) {
    return 'Please enter within $length characters';
  }

  @override
  String get duplicateErrorText => 'It has already been created';

  @override
  String get start => 'START';

  @override
  String get gameSettingTitle => ' Game Setting';

  @override
  String get startIntroductionTitle => 'For those who play for the first time';

  @override
  String startIntroductionStep1(Object player, Object penalty, Object gameSettingTitle) {
    return 'Determine the $player and $penalty game from the 「$gameSettingTitle」.';
  }

  @override
  String startIntroductionStep2(Object start) {
    return 'Tap Start to 「$start」 the game!';
  }
}
