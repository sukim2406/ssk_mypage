import 'package:flutter/material.dart';

import '../constants/dimensions.dart';
import '../constants/constants.dart';

import '../widgets/single_project.dart';
import '../widgets/project_card.dart';

class ProjectsWidgetMobile extends StatefulWidget {
  const ProjectsWidgetMobile({Key? key}) : super(key: key);

  @override
  State<ProjectsWidgetMobile> createState() => _ProjectsWidgetMobileState();
}

class _ProjectsWidgetMobileState extends State<ProjectsWidgetMobile> {
  ScrollController scrollControllerOne = ScrollController();
  ScrollController scrollControllerTwo = ScrollController();
  ScrollController scrollControllerThree = ScrollController();

  @override
  void dispose() {
    // TODO: implement dispose
    scrollControllerOne.dispose();
    scrollControllerTwo.dispose();
    scrollControllerThree.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> temp1 = [
      Container(
        height: setHeight(context, .3),
        width: setWidth(context, .3),
        color: tertiaryColor,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SingleProjectMobile(
                  project: projDailyCommitProject,
                ),
              ),
            );
          },
          child: Image.asset(
            dailycommitprojectImgs[0],
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        height: setHeight(context, .3),
        width: setWidth(context, .3),
        color: primaryColor,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SingleProjectMobile(
                  project: projShareDo,
                ),
              ),
            );
          },
          child: Image.asset(
            sharedoImgs[0],
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        height: setHeight(context, .3),
        width: setWidth(context, .3),
        color: secondaryColor,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SingleProjectMobile(
                  project: projSoSoDay,
                ),
              ),
            );
          },
          child: Image.asset(
            sosodayImgs[0],
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        height: setHeight(context, .3),
        width: setWidth(context, .3),
        color: tertiaryColor,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SingleProjectMobile(
                  project: projEcomWebApp,
                ),
              ),
            );
          },
          child: Image.asset(
            ecomwebappImgs[0],
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        height: setHeight(context, .3),
        width: setWidth(context, .3),
        color: tertiaryColor,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SingleProjectMobile(
                  project: projLookNLike,
                ),
              ),
            );
          },
          child: Image.asset(
            looknlikeImgs[0],
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        height: setHeight(context, .3),
        width: setWidth(context, .3),
        color: tertiaryColor,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SingleProjectMobile(
                  project: projectTweeter,
                ),
              ),
            );
          },
          child: Image.asset(
            tweeterImgs[0],
            fit: BoxFit.cover,
          ),
        ),
      ),
    ];

    List<Widget> temp2 = [
      Container(
        height: setHeight(context, .3),
        width: setWidth(context, .3),
        color: tertiaryColor,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SingleProjectMobile(
                  project: projectTweeter,
                ),
              ),
            );
          },
          child: Image.asset(
            tweeterImgs[0],
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        height: setHeight(context, .3),
        width: setWidth(context, .3),
        color: secondaryColor,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SingleProjectMobile(
                  project: projSoSoDay,
                ),
              ),
            );
          },
          child: Image.asset(
            sosodayImgs[0],
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        height: setHeight(context, .3),
        width: setWidth(context, .3),
        color: quaternaryColor,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SingleProjectMobile(
                  project: projShareDo,
                ),
              ),
            );
          },
          child: Image.asset(
            sharedoImgs[0],
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        height: setHeight(context, .3),
        width: setWidth(context, .3),
        color: tertiaryColor,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SingleProjectMobile(
                  project: projLookNLike,
                ),
              ),
            );
          },
          child: Image.asset(
            looknlikeImgs[0],
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        height: setHeight(context, .3),
        width: setWidth(context, .3),
        color: tertiaryColor,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SingleProjectMobile(
                  project: projDailyCommitProject,
                ),
              ),
            );
          },
          child: Image.asset(
            dailycommitprojectImgs[0],
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        height: setHeight(context, .3),
        width: setWidth(context, .3),
        color: primaryColor,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SingleProjectMobile(
                  project: projEcomWebApp,
                ),
              ),
            );
          },
          child: Image.asset(
            ecomwebappImgs[0],
            fit: BoxFit.cover,
          ),
        ),
      ),
    ];

    return Container(
      color: backColor,
      height: setHeight(context, 1) - 56,
      width: setWidth(context, 1),
      child: Column(
        children: [
          SizedBox(
            height: setHeight(context, .1),
            width: setWidth(context, 1),
            child: Image.asset('img/titles/projects.png'),
          ),
          SizedBox(
            height: setHeight(context, .8),
            width: setWidth(context, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: setHeight(context, .8),
                  width: setWidth(context, .25),
                  color: Colors.amber,
                  child: ListView.builder(
                    controller: scrollControllerOne,
                    itemBuilder: (context, index) {
                      return temp1[index % temp1.length];
                    },
                  ),
                ),
                Container(
                  height: setHeight(context, .8),
                  width: setWidth(context, .25),
                  color: Colors.blue,
                  child: ListView.builder(
                    controller: scrollControllerTwo,
                    itemBuilder: (context, index) {
                      return temp1[index % temp1.length];
                    },
                    reverse: true,
                  ),
                ),
                Container(
                  height: setHeight(context, .8),
                  width: setWidth(context, .25),
                  color: Colors.red,
                  child: ListView.builder(
                    controller: scrollControllerThree,
                    itemBuilder: (context, index) {
                      return temp2[index % temp2.length];
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectsWidgetDesktop extends StatefulWidget {
  final Function scrollTo;
  const ProjectsWidgetDesktop({
    Key? key,
    required this.scrollTo,
  }) : super(key: key);

  @override
  State<ProjectsWidgetDesktop> createState() => _ProjectsWidgetDesktopState();
}

class _ProjectsWidgetDesktopState extends State<ProjectsWidgetDesktop> {
  @override
  Widget build(BuildContext context) {
    List<Widget> projectGrid = [
      GestureDetector(
        onTap: () {
          widget.scrollTo(5);
        },
        child: ProjectCard(
          image: sharedoImgs[0],
          title: projShareDo['title'] as String,
          boxHeight: setHeight(context, 1),
          boxWidth: setWidth(context, 1),
          titleHeight: setHeight(context, .05),
          titleWidth: setWidth(context, 1),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.scrollTo(6);
        },
        child: ProjectCard(
          image: sosodayImgs[0],
          title: projSoSoDay['title'] as String,
          boxHeight: setHeight(context, 1),
          boxWidth: setWidth(context, 1),
          titleHeight: setHeight(context, .05),
          titleWidth: setWidth(context, 1),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.scrollTo(7);
        },
        child: ProjectCard(
          image: ecomwebappImgs[0],
          title: projEcomWebApp['title'] as String,
          boxHeight: setHeight(context, 1),
          boxWidth: setWidth(context, 1),
          titleHeight: setHeight(context, .05),
          titleWidth: setWidth(context, 1),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.scrollTo(8);
        },
        child: ProjectCard(
          image: looknlikeImgs[0],
          title: projLookNLike['title'] as String,
          boxHeight: setHeight(context, 1),
          boxWidth: setWidth(context, 1),
          titleHeight: setHeight(context, .05),
          titleWidth: setWidth(context, 1),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.scrollTo(9);
        },
        child: ProjectCard(
          image: dailycommitprojectImgs[0],
          title: projDailyCommitProject['title'] as String,
          boxHeight: setHeight(context, 1),
          boxWidth: setWidth(context, 1),
          titleHeight: setHeight(context, .05),
          titleWidth: setWidth(context, 1),
        ),
      ),
      GestureDetector(
        onTap: () {
          widget.scrollTo(10);
        },
        child: ProjectCard(
          image: tweeterImgs[0],
          title: projectTweeter['title'] as String,
          boxHeight: setHeight(context, 1),
          boxWidth: setWidth(context, 1),
          titleHeight: setHeight(context, .05),
          titleWidth: setWidth(context, 1),
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          color: Colors.orange,
        ),
      ),
    ];
    return SizedBox(
      height: setHeight(context, 1),
      width: setWidth(context, .7),
      child: Column(
        children: [
          SizedBox(
            height: setHeight(context, .2),
            width: setWidth(context, .5),
            child: Image.asset(
              'img/titles/projectsDesktop.png',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: setHeight(context, .7),
            width: setWidth(context, .6),
            child: GridView.count(
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: projectGrid,
            ),
          ),
        ],
      ),
    );
  }
}
