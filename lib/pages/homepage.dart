import 'package:flutter/material.dart';

import '../widgets/responsive_layout.dart';

import '../pages/desktop_body.dart';
import '../pages/mobile_body.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobile: MobileBody(),
        desktop: DesktopBody(),
      ),
    );
  }
}
