import 'package:flutter/material.dart';

import 'body/index.dart';
import 'footer/index.dart';
import 'header/index.dart';

class LayoutComponent extends StatelessWidget {
  const LayoutComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderComponent(),
            BodyComponent(),
            FooterComponent(),
          ],
        ),
      ),
    );
  }
}
