import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/dimensions.dart';
import '../constants/constants.dart';

class SnsBtn extends StatelessWidget {
  const SnsBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: setHeight(context, .1),
      width: setWidth(context, .8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: setHeight(context, .05),
            height: setHeight(context, .05),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: backColor,
            ),
            child: GestureDetector(
              onTap: () {
                print('github');
                html.window.open('www.github.com', "_blank");
              },
              child: FaIcon(
                FontAwesomeIcons.github,
                size: setHeight(context, .05),
                color: tertiaryColor,
              ),
            ),
            alignment: Alignment.center,
          ),
          SizedBox(
            width: setHeight(context, .025),
          ),
          Container(
            width: setHeight(context, .05),
            height: setHeight(context, .05),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: backColor,
            ),
            child: GestureDetector(
              onTap: () {
                print('youtube');
                html.window.open('www.youtube.com', "_blank");
              },
              child: FaIcon(
                FontAwesomeIcons.youtube,
                size: setHeight(context, .05),
                color: tertiaryColor,
              ),
            ),
            alignment: Alignment.center,
          ),
          SizedBox(
            width: setHeight(context, .025),
          ),
          Container(
            width: setHeight(context, .05),
            height: setHeight(context, .05),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: backColor,
            ),
            child: GestureDetector(
              onTap: () {
                print('Linkedin');
                html.window.open('www.linkedin.com', "_blank");
              },
              child: FaIcon(
                FontAwesomeIcons.linkedin,
                size: setHeight(context, .05),
                color: tertiaryColor,
              ),
            ),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
