import 'dart:ui';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ProjectCard extends StatelessWidget {
  final String image;
  final String title;
  final double boxHeight;
  final double boxWidth;
  final double titleHeight;
  final double titleWidth;

  const ProjectCard({
    Key? key,
    required this.image,
    required this.title,
    required this.boxHeight,
    required this.boxWidth,
    required this.titleHeight,
    required this.titleWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: boxHeight,
      width: boxWidth,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.center,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: Container(
            height: titleHeight,
            width: titleWidth,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.3),
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                width: 2,
                color: Colors.white30,
              ),
            ),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: tertiaryColor,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
