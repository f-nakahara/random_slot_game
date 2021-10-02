


import 'app_localization.dart';

/// The translations for Japanese (`ja`).
class AppLocalizationJa extends AppLocalization {
  AppLocalizationJa([String locale = 'ja']) : super(locale);

  @override
  String get player => 'プレイヤー';

  @override
  String get action => 'アクション';

  @override
  String get target => 'ターゲット';

  @override
  String checkExplanation(Object subject) {
    return '使用する$subjectにチェックを入れてください。';
  }

  @override
  String addExplanation(Object subject) {
    return '$subjectを新しく追加する場合は「+」ボタンを押してください。';
  }

  @override
  String createTitle(Object subject) {
    return '$subject作成';
  }

  @override
  String get deletionNotice => '本当に削除しますか？';

  @override
  String get delete => '削除';

  @override
  String get cancel => 'キャンセル';

  @override
  String get close => '閉じる';

  @override
  String get create => '作成';

  @override
  String get emptyErrorText => '値を入力してください';

  @override
  String maxLengthErrorText(Object length) {
    return '$length文字以内で入力してください';
  }

  @override
  String get duplicateErrorText => '既に作成済みです';

  @override
  String get start => 'はじめる';

  @override
  String get gameSettingTitle => ' ゲーム設定';

  @override
  String get startIntroductionTitle => 'はじめてプレイする方へ';

  @override
  String startIntroductionStep1(Object player, Object target, Object action, Object gameSettingTitle) {
    return '「$gameSettingTitle」から$playerと$targetと$actionを決める。';
  }

  @override
  String startIntroductionStep2(Object start) {
    return '「$start」をタップでゲームスタート！';
  }

  @override
  String startErrorText(Object setting, Object subject1, Object subject2, Object subject3) {
    return '「$setting」から「$subject1」と「$subject2」と「$subject3」を作成してください。';
  }

  @override
  String get stop => 'STOP';

  @override
  String get play => 'PLAY';

  @override
  String get replay => 'REPLAY';

  @override
  String get loading => '準備中';

  @override
  String get test => 'テスト';

  @override
  String get defaultTargetName1 => 'だけが';

  @override
  String get defaultTargetName2 => 'の左の人が';

  @override
  String get defaultTargetName3 => 'の右の人が';

  @override
  String get defaultTargetName4 => '以外全員が';

  @override
  String get defaultPlayerName1 => 'プレイヤー1';

  @override
  String get defaultPlayerName2 => 'プレイヤー2';

  @override
  String get defaultActionName1 => '一気飲みをする';

  @override
  String get defaultActionName2 => '面白い話をする';
}
