import 'package:flutter/material.dart';
import 'package:ssk_mypage/constants/constants.dart';
import 'package:ssk_mypage/constants/dimensions.dart';
import 'package:ssk_mypage/widgets/contact_widget.dart';
import 'package:ssk_mypage/widgets/home_widget.dart';
import 'package:ssk_mypage/widgets/projects_widget.dart';
import 'package:ssk_mypage/widgets/skills_widget.dart';

import '../widgets/navigation_bar.dart';
import '../widgets/about_widget.dart';
import '../widgets/single_project.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    scrollFunction(to) {
      scrollController.animateTo(
        setHeight(context, to),
        duration: const Duration(seconds: 1),
        curve: Curves.ease,
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: setWidth(context, 1),
        height: setHeight(context, 1),
        color: quaternaryColor,
        child: Row(
          children: [
            NavigationBarDesktop(
              scrollTo: scrollFunction,
            ),
            Container(
              height: setHeight(context, .9),
              color: quaternaryColor,
              child: VerticalDivider(
                width: setWidth(context, .03),
              ),
            ),
            Container(
              height: setHeight(context, 1),
              width: setWidth(context, .7),
              color: quaternaryColor,
              child: ScrollConfiguration(
                behavior: ScrollConfiguration.of(context).copyWith(
                  scrollbars: false,
                ),
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: scrollController,
                  child: Column(
                    children: [
                      const HomeWidgetDesktop(),
                      const AboutWidgetDesktop(),
                      const SkillsWidgetDesktop(),
                      ProjectsWidgetDesktop(
                        scrollTo: scrollFunction,
                      ),
                      const ContactWidgetDesktop(),
                      const SingleProjectDesktop(project: projShareDo),
                      const SingleProjectDesktop(project: projSoSoDay),
                      const SingleProjectDesktop(project: projEcomWebApp),
                      const SingleProjectDesktop(
                          project: projDailyCommitProject),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
