import 'package:flutter/material.dart';

import '../constants/dimensions.dart';
import '../constants/constants.dart';

class ProjectsWidgetMobile extends StatelessWidget {
  const ProjectsWidgetMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backColor,
      height: setHeight(context, 1) - 56,
      width: setWidth(context, 1),
      child: Column(
        children: const [
          Text(
            'Hello Projects',
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}