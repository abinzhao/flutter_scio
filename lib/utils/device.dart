import 'package:flutter/material.dart';

/// 设备方法
class DeviceUtils {
  /// 获取屏幕宽度
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  /// 获取屏幕高度
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  /// 是否是小屏幕
  static bool isMinScreen(BuildContext context) {
    return getScreenWidth(context) < 600;
  }
}
