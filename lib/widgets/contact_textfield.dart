import 'package:flutter/material.dart';

import '../constants/dimensions.dart';
import '../constants/constants.dart';

class ContactTextFieldMobile extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  const ContactTextFieldMobile({
    Key? key,
    required this.controller,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: setHeight(context, .1),
      width: setWidth(context, .7),
      alignment: Alignment.center,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: labelText,
          labelStyle: const TextStyle(
            color: tertiaryColor,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: secondaryColor,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: quaternaryColor,
            ),
          ),
        ),
      ),
    );
  }
}

class ContactTextFieldDeskTop extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  const ContactTextFieldDeskTop({
    Key? key,
    required this.controller,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: setHeight(context, .1),
      width: setWidth(context, .5),
      child: Center(
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            labelText: labelText,
            labelStyle: const TextStyle(
              color: tertiaryColor,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                color: tertiaryColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                color: quaternaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
