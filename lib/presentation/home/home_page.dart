import 'package:flutter/material.dart';
import 'package:random_slot_game/core/l10n/app_localization.dart';
import 'package:random_slot_game/core/util/navigator_util.dart';
import 'package:random_slot_game/presentation/game_setting/game_setting_page.dart';
import 'package:sizer/sizer.dart';

/// ホーム画面
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              _Introduction(),
              SizedBox(height: 80),
              _StartButton(),
              SizedBox(height: 10),
              _GameSettingButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class _GameSettingButton extends StatelessWidget {
  const _GameSettingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalization.of(context)!;
    return SizedBox(
      width: double.infinity,
      height: 8.h,
      child: OutlinedButton(
        onPressed: () {
          NavigatorUtil.push(
            context,
            page: const GameSettingPage(),
          );
        },
        child: Text(
          localization.gameSettingTitle,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.sp,
          ),
        ),
      ),
    );
  }
}

class _StartButton extends StatelessWidget {
  const _StartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalization.of(context)!;
    return SizedBox(
      width: double.infinity,
      height: 8.h,
      child: ElevatedButton(
        onPressed: () {
          NavigatorUtil.push(context, page: const SlotPage());
        },
        style: ElevatedButton.styleFrom(),
        child: Text(
          localization.start,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.sp,
          ),
        ),
      ),
    );
  }
}

class _Introduction extends StatelessWidget {
  const _Introduction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalization.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitle(localization.startIntroductionTitle),
        const SizedBox(height: 10),
        _buildStep(
          stepNumber: 1,
          text: localization.startIntroductionStep1(
            localization.player,
            localization.action,
            localization.gameSettingTitle,
          ),
        ),
        _buildStep(
          stepNumber: 3,
          text: localization.startIntroductionStep2(localization.start),
        ),
      ],
    );
  }

  Text _buildTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15.sp,
      ),
    );
  }

  Widget _buildStep({required int stepNumber, required String text}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$stepNumber. '),
        Expanded(child: Text(text)),
      ],
    );
  }
}
