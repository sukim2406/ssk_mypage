import 'package:flutter/material.dart';

import '../constants/dimensions.dart';
import '../constants/constants.dart';

import '../widgets/sns_btn.dart';

class HomeWidgetMobile extends StatelessWidget {
  const HomeWidgetMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: setHeight(context, 1) - 56,
      width: setWidth(context, 1),
      child: Column(
        children: [
          SizedBox(
            height: setHeight(context, .15) - 56,
          ),
          Container(
            height: setHeight(context, .5),
            color: backColor,
            child: Image.asset(
              'img/titles/mobile-logo.png',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: setHeight(context, .1),
            width: setWidth(context, .8),
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                  text: 'ENTHUSIASTIC, PERSISTENT & FUN-LOVING',
                  style: TextStyle(
                    color: quaternaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: '\nFull-stack developer',
                      style: TextStyle(
                        color: quaternaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
            ),
          ),
          const SnsBtn(
            desktop: false,
          ),
          SizedBox(
            height: setHeight(context, .15),
          ),
        ],
      ),
    );
  }
}

class HomeWidgetDesktop extends StatelessWidget {
  const HomeWidgetDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: setHeight(context, 1),
      width: setWidth(context, .7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: setHeight(context, .3),
            child: Image.asset(
              'img/titles/desktop-logo.png',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: setHeight(context, .1),
            width: setWidth(context, .6),
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                  text: 'ENTHUSIASTIC, PERSISTENT & FUN-LOVING',
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: '\nFull-stack developer',
                      style: TextStyle(
                        color: secondaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
            ),
          ),
          const SnsBtn(
            desktop: true,
          ),
        ],
      ),
    );
  }
}
