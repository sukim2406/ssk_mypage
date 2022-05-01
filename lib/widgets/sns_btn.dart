import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/dimensions.dart';
import '../constants/constants.dart';

class SnsBtn extends StatelessWidget {
  final bool desktop;
  const SnsBtn({Key? key, required this.desktop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    openUrl(url) async {
      Uri uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        throw 'Could not launch $url';
      }
    }

    return SizedBox(
      height: setHeight(context, .1),
      width: setWidth(context, .8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: setHeight(context, .05),
            height: setHeight(context, .05),
            decoration: desktop
                ? const BoxDecoration(
                    shape: BoxShape.circle,
                    color: quaternaryColor,
                  )
                : const BoxDecoration(
                    shape: BoxShape.circle,
                    color: backColor,
                  ),
            child: GestureDetector(
              onTap: () {
                print('github');
                // html.window.open('www.github.com', "_blank");
                openUrl('http://www.github.com/sukim2406');
              },
              child: FaIcon(
                FontAwesomeIcons.github,
                size: setHeight(context, .05),
                color: desktop ? backColor : tertiaryColor,
              ),
            ),
            alignment: Alignment.center,
          ),
          SizedBox(
            width: setHeight(context, .025),
          ),
          Container(
            width: setHeight(context, .05),
            height: setHeight(context, .05),
            decoration: desktop
                ? const BoxDecoration(
                    shape: BoxShape.circle,
                    color: quaternaryColor,
                  )
                : const BoxDecoration(
                    shape: BoxShape.circle,
                    color: backColor,
                  ),
            child: GestureDetector(
              onTap: () {
                print('youtube');
                openUrl(
                    'https://www.youtube.com/watch?v=-xhBrXTyZYA&list=PLYrIoLucH5shIJDSezpkZz8Z7Eq0e-ykU&ab_channel=SounKim');
              },
              child: FaIcon(
                FontAwesomeIcons.youtube,
                size: setHeight(context, .05),
                color: desktop ? backColor : tertiaryColor,
              ),
            ),
            alignment: Alignment.center,
          ),
          SizedBox(
            width: setHeight(context, .025),
          ),
          Container(
            width: setHeight(context, .05),
            height: setHeight(context, .05),
            decoration: desktop
                ? const BoxDecoration(
                    shape: BoxShape.circle,
                    color: quaternaryColor,
                  )
                : const BoxDecoration(
                    shape: BoxShape.circle,
                    color: backColor,
                  ),
            child: GestureDetector(
              onTap: () {
                print('Linkedin');
                openUrl('www.github.com');
              },
              child: FaIcon(
                FontAwesomeIcons.linkedin,
                size: setHeight(context, .05),
                color: desktop ? backColor : tertiaryColor,
              ),
            ),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
