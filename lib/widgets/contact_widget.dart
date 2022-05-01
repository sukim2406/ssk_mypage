import 'dart:ui';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../constants/dimensions.dart';
import '../constants/constants.dart';
import '../constants/emailjs.dart';

import '../widgets/sns_btn.dart';

class ContactWidgetMobile extends StatelessWidget {
  const ContactWidgetMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController subjectController = TextEditingController();
    TextEditingController messageController = TextEditingController();

    Future sendEmail({
      required String name,
      required String email,
      required String subject,
      required String message,
    }) async {
      final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode(
          {
            'service_id': serviceId,
            'template_id': templateId,
            'user_id': userId,
            'template_params': {
              'user_name': name,
              'user_email': email,
              'user_subject': subject,
              'user_message': message,
            }
          },
        ),
      );
    }

    return Container(
      color: backColor,
      height: setHeight(context, 1) - 56,
      width: setWidth(context, 1),
      child: Column(
        children: [
          SizedBox(
            height: setHeight(context, .15),
            width: setWidth(context, .8),
            child: Image.asset('img/titles/contactme.png'),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: Container(
                height: setHeight(context, .75) - 56,
                width: setWidth(context, .8),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                    colors: [Colors.white60, Colors.white30],
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: setHeight(context, .1),
                      width: setWidth(context, .7),
                      alignment: Alignment.center,
                      child: TextField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Name',
                          labelStyle: TextStyle(
                            color: tertiaryColor,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: secondaryColor,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: quaternaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: setHeight(context, .1),
                      width: setWidth(context, .7),
                      alignment: Alignment.center,
                      child: TextField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: tertiaryColor,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: secondaryColor,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: quaternaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: setHeight(context, .1),
                      width: setWidth(context, .7),
                      alignment: Alignment.center,
                      child: TextField(
                        controller: subjectController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Subject',
                          labelStyle: TextStyle(
                            color: tertiaryColor,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: secondaryColor,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: quaternaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: setHeight(context, .3),
                      width: setWidth(context, .7),
                      alignment: Alignment.center,
                      child: TextField(
                        controller: messageController,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        minLines: 8,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Message',
                          labelStyle: TextStyle(
                            color: tertiaryColor,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: secondaryColor,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: quaternaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                      ),
                      onPressed: () {
                        if (nameController.text.isNotEmpty &&
                            emailController.text.isNotEmpty &&
                            subjectController.text.isNotEmpty &&
                            messageController.text.isNotEmpty) {
                          sendEmail(
                              name: nameController.text,
                              email: emailController.text,
                              subject: subjectController.text,
                              message: messageController.text);
                        } else {
                          print('empty field detected');
                        }
                        print(nameController.text +
                            ' ' +
                            emailController.text +
                            ' ' +
                            subjectController.text +
                            ' ' +
                            messageController.text);
                      },
                      child: Text('Send'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SnsBtn(
            desktop: false,
          ),
        ],
      ),
    );
  }
}
