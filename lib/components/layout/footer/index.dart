import 'package:flutter/material.dart';

import '../../../utils/device.dart';

class FooterComponent extends StatefulWidget {
  const FooterComponent({super.key});

  @override
  State<FooterComponent> createState() => _FooterComponentState();
}

class _FooterComponentState extends State<FooterComponent> {
  @override
  Widget build(BuildContext context) {
    bool isMinScreen = DeviceUtils.isMinScreen(context);
    double width = DeviceUtils.getScreenWidth(context);
    return SizedBox(
      height: 100,
      width: width,
      child: Text('footer${isMinScreen ? '我是小屏幕' : '我是大屏幕'}'),
    );
  }
}
