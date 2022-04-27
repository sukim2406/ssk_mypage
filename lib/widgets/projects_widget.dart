import 'package:flutter/material.dart';

import '../constants/dimensions.dart';
import '../constants/constants.dart';

class ProjectsWidgetMobile extends StatefulWidget {
  const ProjectsWidgetMobile({Key? key}) : super(key: key);

  @override
  State<ProjectsWidgetMobile> createState() => _ProjectsWidgetMobileState();
}

class _ProjectsWidgetMobileState extends State<ProjectsWidgetMobile> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      double minScrollExtent = scrollController.position.maxScrollExtent;
      double maxScrollExtent = scrollController.position.maxScrollExtent;

      animateToMaxMin(maxScrollExtent, minScrollExtent, maxScrollExtent, 15,
          scrollController);
    });
  }

  animateToMaxMin(double max, double min, double direction, int seconds,
      ScrollController controller) {
    controller
        .animateTo(direction,
            duration: Duration(seconds: seconds), curve: Curves.linear)
        .then((value) {
      direction = direction == max ? min : max;
      animateToMaxMin(max, min, direction, seconds, controller);
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> temp1 = [
      Container(
        height: setHeight(context, .3),
        width: setWidth(context, .3),
        color: primaryColor,
      ),
      Container(
        height: setHeight(context, .3),
        width: setWidth(context, .3),
        color: secondaryColor,
      ),
      Container(
        height: setHeight(context, .3),
        width: setWidth(context, .3),
        color: tertiaryColor,
      ),
      Container(
        height: setHeight(context, .3),
        width: setWidth(context, .3),
        color: quaternaryColor,
      ),
    ];

    List<Widget> temp2 = [
      Container(
        height: setHeight(context, .3),
        width: setWidth(context, .3),
        color: secondaryColor,
      ),
      Container(
        height: setHeight(context, .3),
        width: setWidth(context, .3),
        color: quaternaryColor,
      ),
      Container(
        height: setHeight(context, .3),
        width: setWidth(context, .3),
        color: primaryColor,
      ),
      Container(
        height: setHeight(context, .3),
        width: setWidth(context, .3),
        color: tertiaryColor,
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
            child: Image.asset('img/projects.png'),
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
                    // controller: scrollController,
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
                    controller: scrollController,
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

// class ProjectsWidgetMobile extends StatelessWidget {
//   const ProjectsWidgetMobile({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     List<Widget> temp1 = [
//       Container(
//         height: setHeight(context, .3),
//         width: setWidth(context, .3),
//         color: primaryColor,
//       ),
//       Container(
//         height: setHeight(context, .3),
//         width: setWidth(context, .3),
//         color: secondaryColor,
//       ),
//       Container(
//         height: setHeight(context, .3),
//         width: setWidth(context, .3),
//         color: tertiaryColor,
//       ),
//       Container(
//         height: setHeight(context, .3),
//         width: setWidth(context, .3),
//         color: quaternaryColor,
//       ),
//     ];

//     List<Widget> temp2 = [
//       Container(
//         height: setHeight(context, .3),
//         width: setWidth(context, .3),
//         color: secondaryColor,
//       ),
//       Container(
//         height: setHeight(context, .3),
//         width: setWidth(context, .3),
//         color: quaternaryColor,
//       ),
//       Container(
//         height: setHeight(context, .3),
//         width: setWidth(context, .3),
//         color: primaryColor,
//       ),
//       Container(
//         height: setHeight(context, .3),
//         width: setWidth(context, .3),
//         color: tertiaryColor,
//       ),
//     ];

//     return Container(
//       color: backColor,
//       height: setHeight(context, 1) - 56,
//       width: setWidth(context, 1),
//       child: Column(
//         children: [
//           SizedBox(
//             height: setHeight(context, .1),
//             width: setWidth(context, 1),
//             child: Image.asset('img/projects.png'),
//           ),
//           SizedBox(
//             height: setHeight(context, .8),
//             width: setWidth(context, 1),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   height: setHeight(context, .8),
//                   width: setWidth(context, .3),
//                   color: Colors.amber,
//                   child: ListView.builder(
//                     itemBuilder: (context, index) {
//                       return temp1[index % temp1.length];
//                     },
//                   ),
//                 ),
//                 Container(
//                   height: setHeight(context, .8),
//                   width: setWidth(context, .3),
//                   color: Colors.blue,
//                   child: ListView.builder(
//                     itemBuilder: (context, index) {
//                       return temp1[index % temp1.length];
//                     },
//                     reverse: true,
//                   ),
//                 ),
//                 Container(
//                   height: setHeight(context, .8),
//                   width: setWidth(context, .3),
//                   color: Colors.red,
//                   child: ListView.builder(
//                     itemBuilder: (context, index) {
//                       return temp2[index % temp2.length];
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
