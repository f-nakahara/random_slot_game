import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:random_slot_game/core/config/app_config.dart';

class AdsenseUtil {
  AdsenseUtil._();

  // アプリIDを返す関数
  static String get appId {
    if (Platform.isAndroid) {
      return AppConfig.androidAppId; //AndroidのアプリID
    } else if (Platform.isIOS) {
      return AppConfig.iosAppId; //iOSのアプリID
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }

  // 広告ユニットIDを返す関数
  static String get bannerAdUnitId {
    if (kDebugMode) {
      return BannerAd.testAdUnitId;
    }
    if (Platform.isAndroid) {
      return AppConfig.androidBannerUnitId; // Androidの広告ユニットID
    } else if (Platform.isIOS) {
      return AppConfig.iosBannerUnitId; // iOSの広告ユニットID
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }

  static String get interstitialAdUnitId {
    // if (kDebugMode) {
    //   return InterstitialAd.testAdUnitId;
    // }
    if (Platform.isAndroid) {
      return AppConfig.androidInterstitialUnitId; // Androidの広告ユニットID
    } else if (Platform.isIOS) {
      return AppConfig.iosInterstitialUnitId; // iOSの広告ユニットID
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }
}
