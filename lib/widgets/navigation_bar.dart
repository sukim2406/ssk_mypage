import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/dimensions.dart';

class NavigationBarMobile extends StatelessWidget {
  final Function? scrollTo;
  const NavigationBarMobile({
    Key? key,
    required this.scrollTo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.grey,
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
              ),
            ),
            SizedBox(
              height: setHeight(context, .05),
            ),
            buildMenuItem(
              text: 'About',
              icon: const FaIcon(
                FontAwesomeIcons.person,
                color: Colors.white,
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
    );
  }

  Widget buildMenuItem({
    required String text,
    required FaIcon icon,
    required Function func,
  }) {
    final color = Colors.white;

    return ListTile(
      leading: icon,
      title: Text(
        text,
        style: TextStyle(
          color: color,
        ),
      ),
      onTap: () {
        func();
      },
    );
  }
}
