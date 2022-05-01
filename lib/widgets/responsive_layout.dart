import 'package:flutter/material.dart';

import '../constants/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;

  const ResponsiveLayout({
    Key? key,
    required this.mobile,
    required this.desktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobile;
        } else {
          return desktop;
        }
      }),
    );
  }
}
