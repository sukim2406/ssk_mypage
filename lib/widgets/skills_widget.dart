import 'package:flutter/material.dart';

import '../constants/dimensions.dart';
import '../constants/constants.dart';

import '../widgets/wave_anim_widget.dart';

class SkillsWidgetMobile extends StatefulWidget {
  const SkillsWidgetMobile({Key? key}) : super(key: key);

  @override
  State<SkillsWidgetMobile> createState() => _SkillsWidgetMobileState();
}

class _SkillsWidgetMobileState extends State<SkillsWidgetMobile> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController = ScrollController();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      double minScrollExtent = scrollController.position.minScrollExtent;
      double maxScrollExtent = scrollController.position.maxScrollExtent;

      animateToMaxMin(maxScrollExtent, minScrollExtent, maxScrollExtent, 15,
          scrollController);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    scrollController.dispose();
    super.dispose();
  }

  animateToMaxMin(double max, double min, double direction, int seconds,
      ScrollController controller) {
    if (controller.hasClients) {
      controller
          .animateTo(direction,
              duration: Duration(seconds: seconds), curve: Curves.linear)
          .then((value) {
        direction = direction == max ? min : max;
        animateToMaxMin(max, min, direction, seconds, controller);
      });
    }
  }

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
            child: Row(
              children: [
                SizedBox(
                  width: setWidth(context, .05),
                ),
                SizedBox(
                  height: setHeight(context, .2),
                  child: Image.asset('img/titles/skills-title.png'),
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),
          SizedBox(
            height: setHeight(context, .5) - 56,
            width: setWidth(context, .9),
            child: RichText(
              text: const TextSpan(
                text: 'Languages : \n',
                style: TextStyle(
                  color: secondaryColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: 'JAVASCRIPT, C, JAVA, PYTHON, DART \n',
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'Frameworks : \n'),
                  TextSpan(
                    text: 'DJANGO, VUE, FLUTTER \n',
                    style: TextStyle(
                      color: tertiaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'Other : \n'),
                  TextSpan(
                    text: 'HTML, CSS, FIREBASE, GIT \n',
                    style: TextStyle(
                      color: quaternaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: setHeight(context, .3),
            child: SingleChildScrollView(
              controller: scrollController,
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                height: setHeight(context, .5),
                width: setWidth(context, 2),
                child: Stack(
                  children: [
                    Container(),
                    Positioned.fill(
                      child: WaveAnimWidget(
                        height: setHeight(context, .3),
                        width: setWidth(context, 2),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SkillsWidgetDesktop extends StatefulWidget {
  const SkillsWidgetDesktop({Key? key}) : super(key: key);

  @override
  State<SkillsWidgetDesktop> createState() => _SkillsWidgetDesktopState();
}

class _SkillsWidgetDesktopState extends State<SkillsWidgetDesktop> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      double minScrollExtent = scrollController.position.minScrollExtent;
      double maxScrollExtent = scrollController.position.maxScrollExtent;

      animateToMaxMin(maxScrollExtent, minScrollExtent, maxScrollExtent, 15,
          scrollController);
    });
  }

  animateToMaxMin(double max, double min, double direction, int seconds,
      ScrollController controller) {
    if (scrollController.hasClients) {
      controller
          .animateTo(direction,
              duration: Duration(seconds: seconds), curve: Curves.linear)
          .then((value) {
        direction = direction == max ? min : max;
        animateToMaxMin(max, min, direction, seconds, controller);
      });
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: setHeight(context, 1),
      width: setWidth(context, .7),
      child: Column(
        children: [
          Expanded(
            child: Container(),
          ),
          SizedBox(
            height: setHeight(context, .2),
            width: setWidth(context, .7),
            child: Image.asset(
              'img/titles/myskillsdesk.png',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: setHeight(context, .05),
          ),
          SizedBox(
            height: setHeight(context, .3),
            width: setWidth(context, .7),
            child: RichText(
              text: const TextSpan(
                text: 'Languages : \n',
                style: TextStyle(
                  color: secondaryColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: 'JAVASCRIPT, C, JAVA, PYTHON, DART \n',
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'Frameworks : \n'),
                  TextSpan(
                    text: 'DJANGO, VUE, FLUTTER \n',
                    style: TextStyle(
                      color: secondaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'Other : \n'),
                  TextSpan(
                    text: 'HTML, CSS, FIREBASE, GIT \n',
                    style: TextStyle(
                      color: backColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: setHeight(context, .3),
            child: SingleChildScrollView(
              controller: scrollController,
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                height: setHeight(context, .5),
                width: setWidth(context, 2),
                child: Stack(
                  children: [
                    Container(),
                    Positioned.fill(
                      child: WaveAnimWidget(
                        height: setHeight(context, .3),
                        width: setWidth(context, 2),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
