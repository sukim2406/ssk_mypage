import 'package:flutter/material.dart';

import '../constants/dimensions.dart';
import '../constants/constants.dart';

class AboutWidgetMobile extends StatelessWidget {
  const AboutWidgetMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backColor,
      height: setHeight(context, 1) - 56,
      width: setWidth(context, 1),
      child: Column(
        children: const [
          Text(
            'Hello world!',
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}