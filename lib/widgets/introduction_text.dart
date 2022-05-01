import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../constants/dimensions.dart';

class IntroductionText extends StatelessWidget {
  const IntroductionText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: setHeight(context, .5),
      width: setWidth(context, .9),
      child: RichText(
        text: const TextSpan(
          text: 'Hello there! I, ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: secondaryColor,
            fontSize: 20,
          ),
          children: [
            TextSpan(
              text: ' Soun Sean Kim',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: primaryColor,
                fontSize: 27,
              ),
            ),
            TextSpan(
              text:
                  ', am a passionate developler who studied and graduated at ',
            ),
            TextSpan(
              text: ' Purdue University',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: primaryColor,
                fontSize: 26,
              ),
            ),
            TextSpan(text: ' with computer science degree.\n\n'),
            TextSpan(
                text:
                    'Edger to learn, persistant and consistant individual with'),
            TextSpan(
              text: ' Koean - American',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: primaryColor,
                fontSize: 26,
              ),
            ),
            TextSpan(
              text: ' cultural background.',
            ),
            TextSpan(
              text: ' Tech lover',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: primaryColor,
                fontSize: 26,
              ),
            ),
            TextSpan(
                text: ', with greate interests in world around us such as'),
            TextSpan(
              text: ' global economy',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: primaryColor,
                fontSize: 26,
              ),
            ),
            TextSpan(text: ' and '),
            TextSpan(
              text: 'international affairs',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: primaryColor,
                fontSize: 26,
              ),
            ),
            TextSpan(text: '.'),
          ],
        ),
      ),
    );
  }
}
