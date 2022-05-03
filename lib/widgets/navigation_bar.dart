import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ssk_mypage/constants/constants.dart';

import '../constants/dimensions.dart';

class NavigationBarMobile extends StatelessWidget {
  final Function? scrollTo;
  const NavigationBarMobile({
    Key? key,
    required this.scrollTo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: setWidth(context, .5),
      child: Drawer(
        child: Container(
          color: secondaryColor,
          child: ListView(
            children: [
              SizedBox(
                height: setHeight(context, .05),
              ),
              GestureDetector(
                onTap: () {
                  scrollTo!(0);
                },
                child: CircleAvatar(
                  radius: setWidth(context, .15),
                  child: ClipOval(
                    child: Image.asset(
                      'img/profile/ssk-contact.jpeg',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: setHeight(context, .05),
              ),
              buildMenuItem(
                text: 'About',
                icon: const FaIcon(
                  FontAwesomeIcons.person,
                  color: quaternaryColor,
                ),
                func: () {
                  scrollTo!(1);
                },
              ),
              buildMenuItem(
                text: 'Skills',
                icon: const FaIcon(
                  FontAwesomeIcons.computer,
                  color: Colors.white,
                ),
                func: () {
                  scrollTo!(2);
                },
              ),
              buildMenuItem(
                text: 'Projects',
                icon: const FaIcon(
                  FontAwesomeIcons.diagramProject,
                  color: Colors.white,
                ),
                func: () {
                  scrollTo!(3);
                },
              ),
              buildMenuItem(
                text: 'Contacts',
                icon: const FaIcon(
                  FontAwesomeIcons.addressCard,
                  color: Colors.white,
                ),
                func: () {
                  scrollTo!(4);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required FaIcon icon,
    required Function func,
  }) {
    const color = quaternaryColor;

    return ListTile(
      leading: icon,
      title: Text(
        text,
        style: const TextStyle(
          color: color,
        ),
      ),
      onTap: () {
        func();
      },
    );
  }
}

class NavigationBarDesktop extends StatelessWidget {
  final Function? scrollTo;
  const NavigationBarDesktop({
    Key? key,
    required this.scrollTo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: setHeight(context, 1),
      width: setWidth(context, .27),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              scrollTo!(0);
            },
            child: CircleAvatar(
              radius: setHeight(context, .1),
              child: ClipOval(
                child: Image.asset(
                  'img/profile/ssk-contact.jpeg',
                ),
              ),
            ),
          ),
          SizedBox(
            height: setHeight(context, .1),
          ),
          TextButton(
            onPressed: () {
              scrollTo!(1);
            },
            child: const Text(
              'About',
              style: TextStyle(
                color: secondaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              scrollTo!(2);
            },
            child: const Text(
              'Skills',
              style: TextStyle(
                color: secondaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              scrollTo!(3);
            },
            child: const Text(
              'Projects',
              style: TextStyle(
                color: secondaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              scrollTo!(4);
            },
            child: const Text(
              'Contact',
              style: TextStyle(
                color: secondaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
