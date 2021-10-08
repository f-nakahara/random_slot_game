import 'dart:math';

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/core/config/app_config.dart';
import 'package:random_slot_game/core/util/adsense_util.dart';
import 'package:random_slot_game/presentation/slot/widget/slot_list_item/slot_list_item_controller.dart';
import 'package:random_slot_game/presentation/slot/widget/slot_list_item/slot_list_item_state.dart';

import 'slot_control_button_state.dart';

final slotControlButtonController = StateNotifierProvider.autoDispose<
    SlotControlButtonController, SlotControlButtonState>(
  (ref) {
    final playerStopped = ref.watch(
        slotListItemController(SlotListItemType.player)
            .select((value) => value.isStopped));
    final targetStopped = ref.watch(
        slotListItemController(SlotListItemType.target)
            .select((value) => value.isStopped));
    final actionStopped = ref.watch(
        slotListItemController(SlotListItemType.action)
            .select((value) => value.isStopped));

    final isEnabled = playerStopped && targetStopped && actionStopped;
    final state = SlotControlButtonState(isEnabled: isEnabled);
    return SlotControlButtonController(ref.read, state);
  },
);

class SlotControlButtonController
    extends StateNotifier<SlotControlButtonState> {
  SlotControlButtonController(this._reader, state) : super(state);

  final Reader _reader;

  /// スロットを回す
  Future<void> play() async {
    _showInterstitialAdsense();
    state = state.copyWith(isEnabled: false);
    Future.wait([
      _reader(slotListItemController(SlotListItemType.player).notifier)
          .startSlot(),
      _reader(slotListItemController(SlotListItemType.target).notifier)
          .startSlot(),
      _reader(slotListItemController(SlotListItemType.action).notifier)
          .startSlot(),
    ]);
  }

  /// 初期状態に戻す
  Future<void> reset() async {
    state = state.copyWith(isEnabled: true);
  }

  /// インタースティシャル広告の表示
  Future<void> _showInterstitialAdsense() async {
    final seed = Random().nextInt(100);
    if (seed < AppConfig.interstitialProbability) {
      InterstitialAd.load(
        adUnitId: AdsenseUtil.interstitialAdUnitId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            ad.show();
          },
          onAdFailedToLoad: (LoadAdError error) {},
        ),
      );
    }
  }
}
