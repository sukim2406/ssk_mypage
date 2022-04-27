import 'package:flutter/material.dart';

import '../widgets/navigation_bar.dart';
import '../widgets/home_widget.dart';
import '../widgets/about_widget.dart';
import '../widgets/skills_widget.dart';
import '../widgets/projects_widget.dart';
import '../widgets/contact_widget.dart';

import '../constants/constants.dart';
import '../constants/dimensions.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    scrollFunction(to) {
      scrollController.animateTo(
        setHeight(context, to) - (56 * to),
        duration: const Duration(seconds: 1),
        curve: Curves.ease,
      );
    }

    return Scaffold(
      drawer: NavigationBarMobile(
        scrollTo: scrollFunction,
      ),
      appBar: AppBar(
        backgroundColor: backColor,
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Container(
          height: setHeight(context, 5) - (56 * 5),
          color: backColor,
          child: Column(
            children: const [
              HomeWidgetMobile(),
              AboutWidgetMobile(),
              SkillsWidgetMobile(),
              ProjectsWidgetMobile(),
              ContactWidgetMobile(),
            ],
          ),
        ),
      ),
    );
  }
}
