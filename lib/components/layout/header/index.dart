import 'package:flutter/material.dart';

import '../../../utils/device.dart';

class HeaderComponent extends StatefulWidget {
  const HeaderComponent({super.key});

  @override
  State<HeaderComponent> createState() => _HeaderComponentState();
}

class _HeaderComponentState extends State<HeaderComponent> {
  @override
  Widget build(BuildContext context) {
    bool isMinScreen = DeviceUtils.isMinScreen(context);
    double width = DeviceUtils.getScreenWidth(context);
    return SizedBox(
      height: 100,
      width: width,
      child: Text('header${isMinScreen ? '我是小屏幕' : '我是大屏幕'}'),
    );
  }
}
