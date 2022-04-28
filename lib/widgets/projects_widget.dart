import 'package:flutter/material.dart';

import '../constants/dimensions.dart';
import '../constants/constants.dart';

import '../widgets/single_project.dart';

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
  Widget build(BuildContext context) {
    List<Widget> temp1 = [
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
        color: quaternaryColor,
        child: Text('More in process'),
      ),
    ];

    List<Widget> temp2 = [
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
      Container(
        height: setHeight(context, .3),
        width: setWidth(context, .3),
        color: tertiaryColor,
        child: Text('More in process!'),
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
                  width: setWidth(context, .3),
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
                  width: setWidth(context, .3),
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
                  width: setWidth(context, .3),
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
