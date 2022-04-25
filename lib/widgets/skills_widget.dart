import 'package:flutter/material.dart';

import '../constants/dimensions.dart';
import '../constants/constants.dart';

class SkillsWidgetMobile extends StatelessWidget {
  const SkillsWidgetMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backColor,
      height: setHeight(context, 1) - 56,
      width: setWidth(context, 1),
      child: Column(
        children: const [
          Text(
            'Hello Skills',
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
