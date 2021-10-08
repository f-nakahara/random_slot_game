class AppConfig {
  AppConfig._();

  /// データベース関連
  static const playerDBFileName = 'player.db';
  static const playerDBVersion = 1;
  static const targetDBFileName = 'target.db';
  static const targetDBVersion = 1;
  static const actionDBFileName = 'action.db';
  static const actionDBVersion = 1;

  /// 広告関連
  static const androidAppId = 'ca-app-pub-9228907022623843~9927985669';
  static const iosAppId = 'ca-app-pub-9228907022623843~8320579893';
  static const androidBannerUnitId = 'ca-app-pub-9228907022623843/1874591041';
  static const iosBannerUnitId = 'ca-app-pub-9228907022623843/5451352903';
  static const androidInterstitialUnitId =
      'ca-app-pub-9228907022623843/6623999622';
  static const iosInterstitialUnitId = 'ca-app-pub-9228907022623843/6892782300';
  static const interstitialProbability = 30;
}
