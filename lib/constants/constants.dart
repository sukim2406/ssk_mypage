// <a href="https://www.freepnglogos.com/pics/html5-logo">Html5 Logo from freepnglogos.com</a>

import 'package:flutter/material.dart';

const backColor = Color.fromRGBO(0, 0, 0, 1);
//#87bba2
const primaryColor = Color.fromRGBO(135, 187, 162, 1);
//#5d737e
const secondaryColor = Color.fromRGBO(93, 115, 126, 1);
//#fff07c
const tertiaryColor = Color.fromRGBO(255, 240, 124, 1);
//#f0f7ee
const quaternaryColor = Color.fromRGBO(240, 247, 238, 1);

const List<String> tweeterImgs = [
  'img/projects/musk_at_tweeter/1.png',
  'img/projects/musk_at_tweeter/2.png',
  'img/projects/musk_at_tweeter/3.png',
  'img/projects/musk_at_tweeter/4.png',
  'img/projects/musk_at_tweeter/5.png',
  'img/projects/musk_at_tweeter/6.png',
];

const List<String> sharedoImgs = [
  'img/projects/share-do/1.png',
  'img/projects/share-do/2.png',
  'img/projects/share-do/3.png',
  'img/projects/share-do/4.png',
  'img/projects/share-do/5.png',
];

const List<String> sosodayImgs = [
  'img/projects/sosoday/1.png',
  'img/projects/sosoday/2.png',
  'img/projects/sosoday/3.png',
  'img/projects/sosoday/4.png',
  'img/projects/sosoday/5.png',
  'img/projects/sosoday/6.png',
  'img/projects/sosoday/7.png',
  'img/projects/sosoday/8.png',
  'img/projects/sosoday/9.png',
];

const List<String> ecomwebappImgs = [
  'img/projects/ecomwebapp/1.png',
  'img/projects/ecomwebapp/2.png',
  'img/projects/ecomwebapp/3.png',
  'img/projects/ecomwebapp/4.png',
  'img/projects/ecomwebapp/5.png',
  'img/projects/ecomwebapp/6.png',
];

const List<String> looknlikeImgs = [
  'img/projects/looknlike/1.png',
  'img/projects/looknlike/2.png',
  'img/projects/looknlike/3.png',
  'img/projects/looknlike/4.png',
  'img/projects/looknlike/5.png',
];

const List<String> dailycommitprojectImgs = [
  'img/projects/dailycommitproject/1.png',
];

const projShareDo = {
  'screenshots': sharedoImgs,
  'about':
      'Share-Do is a group to-do / project management web-app that allows users to create, track, share to-do items. Each to-do item can have sub to-dos and creator can add contributors. Contributors can mark to-do as finished, and they can also make sub-todo that corresponding to original todo.',
  'github': 'https://github.com/sukim2406/ShareDo',
  'title': 'Share-Do',
  'link': 'https://vue-sharedo.web.app/',
  'tech': [
    'img/skills/css.png',
    'img/skills/html.png',
    'img/skills/javascript.png',
    'img/skills/vue.png',
    'img/skills/firebase.png',
  ],
};

const projSoSoDay = {
  'screenshots': sosodayImgs,
  'about':
      'SoSoDay is a couple\'s SNS app that allows to chat, upload image, share todos just between two of you.',
  'github': 'https://github.com/sukim2406/SoSoDay',
  'title': 'SoSo Day',
  'link': '',
  'tech': [
    'img/skills/dart.png',
    'img/skills/flutter.png',
    'img/skills/firebase.png',
  ],
};

const projEcomWebApp = {
  'screenshots': ecomwebappImgs,
  'about':
      'It is a mock up e-commerce webapp that shows list of products with usual functionalities such as saving favorites and carts. It will also generate receipt page with order Id upon order, which can be used to view order status.',
  'github': 'https://github.com/sukim2406/ssk_mypage',
  'title': 'Ecommerce Web-app',
  'link': 'https://sosodev-ecom-webapp.web.app/',
  'tech': [
    'img/skills/dart.png',
    'img/skills/flutter.png',
    'img/skills/firebase.png',
  ]
};

const projLookNLike = {
  'screenshots': looknlikeImgs,
  'about':
      'LookNLike is Pinterest inspired image sharing webapp. Newsfeed tab will show all the posts in stylish layout, projects tab lists all the projects that you can subscribe/unsubscribe, subscription tab will only show the posts from subscribed projects. The webapp is built with django, and depoloyed to VPS from vultr using Docker and Nginx',
  'title': 'Look & Like',
  'github': 'https://github.com/sukim2406/looknlike_django',
  'link': 'http://158.247.216.236',
  'tech': [
    'img/skills/django.png',
    'img/skills/python.png',
    'img/skills/docker.png',
    'img/skills/nginx.png',
    'img/skills/portainer.png',
  ]
};

const projDailyCommitProject = {
  'screenshots': dailycommitprojectImgs,
  'about':
      'Since Jan. 1st 2022, I have been committing at least once per day on github, and screen recording my coding process. I have uploaded videos on youtube and made it as a playlist. It is merely my own record but it gives huge motivation to keep coding at least few hours a day.',
  'github': 'http://github.com/sukim2406',
  'title': 'Daily Commit Project',
  'link':
      'https://www.youtube.com/playlist?list=PLYrIoLucH5shIJDSezpkZz8Z7Eq0e-ykU',
  'tech': [],
};

const projectTweeter = {
  'screenshots': tweeterImgs,
  'title': 'Musk-at-tweeter',
  'about':
      'I wanted to make a fullstack application using Django rest framework as backend and Flutter as frontend. Its about the same time that I heard Elon Musk is trying to purchase Twitter, and it gave me the idea to make twitter clone app.',
  'github': 'http://github.com/sukim2406/fullstack_app',
  'link': '',
  'tech': [
    'img/skills/django.png',
    'img/skills/python.png',
    'img/skills/flutter.png',
  ]
};
