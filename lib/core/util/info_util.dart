import 'package:package_info_plus/package_info_plus.dart';

class InfoUtil {
  InfoUtil._();

  static late final PackageInfo _info;
  static PackageInfo get info => _info;

  /// 初期化
  static Future<void> init() async {
    _info = await PackageInfo.fromPlatform();
  }
}
