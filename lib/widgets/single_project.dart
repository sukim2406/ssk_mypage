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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: setHeight(context, .08),
              width: setWidth(context, .8),
              child: Text(
                widget.project['title'],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: primaryColor,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: setHeight(context, .15),
              width: setWidth(context, .8),
              child: Text(
                widget.project['about'],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: secondaryColor,
                ),
              ),
            ),
            SizedBox(
              height: setHeight(context, .1),
              width: setWidth(context, .9),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.project['github'],
                    style: const TextStyle(
                      color: quaternaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.project['link'],
                    style: const TextStyle(
                      color: quaternaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: setHeight(context, .17) - 56,
              width: setWidth(context, .9),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.project['tech'].length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: setHeight(context, .17) - 56,
                    width: setWidth(context, .3),
                    child: Image.asset(widget.project['tech'][index],
                        fit: BoxFit.contain),
                  );
                },
              ),
            ),
            Container(
              height: setHeight(context, .5),
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
                      height: setHeight(context, .45),
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

class SingleProjectDesktop extends StatefulWidget {
  final Map project;
  const SingleProjectDesktop({
    Key? key,
    required this.project,
  }) : super(key: key);

  @override
  State<SingleProjectDesktop> createState() => _SingleProjectDesktopState();
}

class _SingleProjectDesktopState extends State<SingleProjectDesktop> {
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
    return SizedBox(
      height: setHeight(context, 1),
      width: setWidth(context, .7),
      child: Column(
        children: [
          Expanded(
            child: Container(),
          ),
          SizedBox(
            height: setHeight(context, .1),
            width: setWidth(context, .7),
            child: Text(
              widget.project['title'],
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: primaryColor,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: setHeight(context, .1),
            width: setWidth(context, .5),
            child: Text(
              widget.project['about'],
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: secondaryColor,
              ),
            ),
          ),
          SizedBox(
            height: setHeight(context, .1),
            width: setWidth(context, .5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.project['github'],
                  style: const TextStyle(
                    color: secondaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.project['link'],
                  style: const TextStyle(
                    color: secondaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: setHeight(context, .1),
            width: setWidth(context, .6),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.project['tech'].length,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: setHeight(context, .1),
                  width: setWidth(context, .2),
                  child: Image.asset(widget.project['tech'][index],
                      fit: BoxFit.contain),
                );
              },
            ),
          ),
          SizedBox(
            height: setHeight(context, .5),
            width: setWidth(context, .6),
            child: Column(
              children: [
                CarouselSlider(
                  items: imgSliders,
                  carouselController: controller,
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    // viewportFraction: 1.0,
                    height: setHeight(context, .45),
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
    );
  }
}
