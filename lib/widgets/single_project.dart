import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../constants/dimensions.dart';
import '../constants/constants.dart';

class SingleProjectMobile extends StatefulWidget {
  final Map project;
  const SingleProjectMobile({
    Key? key,
    required this.project,
  }) : super(key: key);

  @override
  State<SingleProjectMobile> createState() => _SingleProjectMobileState();
}

class _SingleProjectMobileState extends State<SingleProjectMobile> {
  int current = 0;
  final CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final List imgList = widget.project['screenshots'];
    final List<Widget> imgSliders = imgList
        .map(
          (item) => ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(5.0),
            ),
            child: Container(
              child: Image.asset(
                item,
                fit: BoxFit.contain,
                width: setWidth(context, .9),
              ),
            ),
          ),
        )
        .toList();
    // final List<Widget> imgSliders = imgList
    //     .map(
    //       (item) => SizedBox(
    //         child: Container(
    //           height: setHeight(context, .5),
    //           margin: const EdgeInsets.all(5.0),
    //           child: ClipRRect(
    //             borderRadius: const BorderRadius.all(Radius.circular(5.0)),
    //             child: Stack(
    //               children: <Widget>[
    //                 Image.asset(
    //                   item,
    //                   fit: BoxFit.contain,
    //                 ),
    //                 Positioned(
    //                   bottom: 0.0,
    //                   left: 0.0,
    //                   right: 0.0,
    //                   child: Container(
    //                     decoration: const BoxDecoration(
    //                       gradient: LinearGradient(
    //                         colors: [
    //                           Color.fromARGB(200, 0, 0, 0),
    //                           Color.fromARGB(0, 0, 0, 0),
    //                         ],
    //                         begin: Alignment.bottomCenter,
    //                         end: Alignment.topCenter,
    //                       ),
    //                     ),
    //                     padding: const EdgeInsets.symmetric(
    //                       vertical: 10.0,
    //                       horizontal: 20.0,
    //                     ),
    //                     child: Text(
    //                       'No. ${imgList.indexOf(item)} image',
    //                       style: const TextStyle(
    //                         color: Colors.white,
    //                         fontSize: 20.0,
    //                         fontWeight: FontWeight.bold,
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     )
    //     .toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: setHeight(context, 1) - 56,
        width: setWidth(context, 1),
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: setHeight(context, .6),
              width: setWidth(context, .9),
              color: primaryColor,
              child: Column(
                children: [
                  CarouselSlider(
                    items: imgSliders,
                    carouselController: controller,
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      aspectRatio: 2.0,
                      viewportFraction: 1.0,
                      height: setHeight(context, .5),
                      onPageChanged: (index, reason) {
                        setState(
                          () {
                            current = index;
                          },
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => controller.animateToPage(entry.key),
                        child: Container(
                          width: 12.0,
                          height: 12.0,
                          margin: EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 4.0,
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.black)
                                  .withOpacity(current == entry.key ? .9 : .4)),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
