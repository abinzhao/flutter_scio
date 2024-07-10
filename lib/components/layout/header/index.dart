import 'package:flutter/material.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';

import '../../../utils/device.dart';

class HeaderComponent extends StatefulWidget {
  const HeaderComponent({super.key});

  @override
  State<HeaderComponent> createState() => _HeaderComponentState();
}

class _HeaderComponentState extends State<HeaderComponent> {
  String inputText = '';
  
  @override
  Widget build(BuildContext context) {
    bool isMinScreen = DeviceUtils.isMinScreen(context);
    double width = DeviceUtils.getScreenWidth(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: SizedBox(
        height: 80,
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('../assets/icons/logo.png', width: 48, height: 48),
                const Text('header'),
              ],
            ),
            TDSearchBar(
              placeHolder: '搜索预设文案',
              style: TDSearchStyle.round,
              onTextChanged: (String text) {
                setState(() {
                  inputText = text;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
