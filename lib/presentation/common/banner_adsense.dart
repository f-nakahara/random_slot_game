import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:random_slot_game/core/util/adsense_util.dart';

class BannerAdsense extends StatelessWidget {
  const BannerAdsense({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bannerAd = BannerAd(
      size: AdSize.fullBanner,
      adUnitId: AdsenseUtil.bannerAdUnitId,
      listener: const BannerAdListener(),
      request: const AdRequest(),
    )..load();
    return Container(
      alignment: Alignment.center,
      width: bannerAd.size.width.toDouble(),
      height: bannerAd.size.height.toDouble(),
      child: AdWidget(ad: bannerAd),
    );
  }
}
