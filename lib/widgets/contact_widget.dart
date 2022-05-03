import 'dart:ui';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../constants/dimensions.dart';
import '../constants/constants.dart';
import '../constants/emailjs.dart';

import '../widgets/sns_btn.dart';
import '../widgets/contact_textfield.dart';

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
                    ContactTextFieldMobile(
                      controller: nameController,
                      labelText: 'Name',
                    ),
                    ContactTextFieldMobile(
                      controller: emailController,
                      labelText: 'Email',
                    ),
                    ContactTextFieldMobile(
                      controller: subjectController,
                      labelText: 'Subject',
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
                            message: messageController.text,
                          ).then(
                            (result) {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: const Text('Email Sent!'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('OK'),
                                    ),
                                  ],
                                ),
                              );
                              nameController.clear();
                              emailController.clear();
                              subjectController.clear();
                              messageController.clear();
                            },
                          );
                        } else {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Empty field detected'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                          );
                        }
                      },
                      child: const Text('Send'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SnsBtn(
            desktop: false,
          ),
        ],
      ),
    );
  }
}

class ContactWidgetDesktop extends StatelessWidget {
  const ContactWidgetDesktop({Key? key}) : super(key: key);

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

    return SizedBox(
      width: setWidth(context, .7),
      height: setHeight(context, 1),
      child: Column(
        children: [
          SizedBox(
            height: setHeight(context, .2),
            width: setWidth(context, .7),
            child: Image.asset(
              'img/titles/contactDesktop.png',
              fit: BoxFit.contain,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Container(
              height: setHeight(context, .7),
              width: setWidth(context, .6),
              color: secondaryColor,
              alignment: Alignment.center,
              child: Column(
                children: [
                  ContactTextFieldDeskTop(
                    controller: nameController,
                    labelText: 'Name',
                  ),
                  ContactTextFieldDeskTop(
                    controller: emailController,
                    labelText: 'Email',
                  ),
                  ContactTextFieldDeskTop(
                    controller: subjectController,
                    labelText: 'Subject',
                  ),
                  SizedBox(
                    height: setHeight(context, .3),
                    width: setWidth(context, .5),
                    child: Center(
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        minLines: 8,
                        controller: messageController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelText: 'Message',
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
                  ),
                  SizedBox(
                    height: setHeight(context, .05),
                    width: setWidth(context, .4),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: tertiaryColor,
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
                            message: messageController.text,
                          ).then((result) {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text('Email Sent!'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            );
                            nameController.clear();
                            emailController.clear();
                            subjectController.clear();
                            messageController.clear();
                          });
                        } else {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Empty field detected'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                          );
                        }
                      },
                      child: const Text(
                        'Send',
                        style: TextStyle(
                          color: secondaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
