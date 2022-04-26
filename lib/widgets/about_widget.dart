import 'package:flutter/material.dart';

import '../constants/dimensions.dart';
import '../constants/constants.dart';

import '../widgets/introduction_text.dart';

class AboutWidgetMobile extends StatelessWidget {
  const AboutWidgetMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backColor,
      height: setHeight(context, 1) - 56,
      width: setWidth(context, 1),
      child: Column(
        children: [
          SizedBox(
            height: setHeight(context, .2),
            width: setWidth(context, 1),
            child: Image.asset(
              'img/ssk-about.jpeg',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: setHeight(context, .1),
            width: setWidth(context, 1),
            child: Image.asset(
              'img/helloworld.png',
            ),
          ),
          SizedBox(
            height: setHeight(context, .05),
          ),
          const IntroductionText(),
        ],
      ),
    );
  }
}
