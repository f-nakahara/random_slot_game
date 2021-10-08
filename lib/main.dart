import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_slot_game/app.dart';
import 'package:random_slot_game/core/util/info_util.dart';

/// メイン関数
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  EquatableConfig.stringify = true;
  await InfoUtil.init();
  runApp(const ProviderScope(child: App()));
}
