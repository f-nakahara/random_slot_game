import 'package:flutter/material.dart';

class NavigatorUtil {
  NavigatorUtil._();

  /// 進む
  static Future<dynamic> push(
    BuildContext context, {
    required Widget page,
    bool fullscreenDialog = false,
  }) async {
    return Navigator.of(context).push(
      _pageRoute(
        page: page,
        fullscreenDialog: fullscreenDialog,
      ),
    );
  }

  /// 戻る
  static Future<dynamic> pop(BuildContext context, {dynamic value}) async {
    return Navigator.of(context).pop(value);
  }

  /// Route
  static MaterialPageRoute<Object?> _pageRoute({
    required Widget page,
    required bool fullscreenDialog,
  }) {
    return MaterialPageRoute(
      builder: (context) {
        return page;
      },
      fullscreenDialog: fullscreenDialog,
    );
  }
}
