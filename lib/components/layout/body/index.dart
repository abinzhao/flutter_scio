import 'package:flutter/material.dart';

import '../../../utils/device.dart';

class BodyComponent extends StatefulWidget {
  const BodyComponent({super.key});

  @override
  State<BodyComponent> createState() => _BodyComponentState();
}

class _BodyComponentState extends State<BodyComponent> {
  @override
  Widget build(BuildContext context) {
    final isMinScreen = DeviceUtils.isMinScreen(context);
    return Expanded(
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('body${isMinScreen ? '我是小屏幕' : '我是大屏幕'}'),
            Text('body${isMinScreen ? '我是小屏幕' : '我是大屏幕'}'),
          ],
        ),
      ),
    );
  }
}
