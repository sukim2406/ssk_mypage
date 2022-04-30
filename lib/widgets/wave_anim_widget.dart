import 'package:flutter/material.dart';
import 'dart:math';

class WaveAnimWidget extends StatefulWidget {
  final double height;
  final double width;
  const WaveAnimWidget({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  State<WaveAnimWidget> createState() => _WaveAnimWidgetState();
}

class _WaveAnimWidgetState extends State<WaveAnimWidget>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 5000),
    );
    animation =
        Tween<double>(begin: 0, end: 2 * pi).animate(animationController);
    animationController.addListener(() {
      setState(() {});
    });
    animationController.repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double waveHeight = widget.height;
    return Stack(
      children: [
        singleLogo(-.9, 'img/skills/css.png'),
        singleLogo(-.7, 'img/skills/django.png'),
        singleLogo(-.5, 'img/skills/firebase.png'),
        singleLogo(-.3, 'img/skills/python.png'),
        singleLogo(-.1, 'img/skills/html.png'),
        singleLogo(.1, 'img/skills/javascript.png'),
        singleLogo(.3, 'img/skills/flutter.png'),
        singleLogo(.5, 'img/skills/dart.png'),
        singleLogo(.7, 'img/skills/vue.png'),
        singleLogo(.9, 'img/skills/git.png'),
        SizedBox(
          height: waveHeight,
          child: ClipPath(
            clipper: WaveClipper(animation.value),
            child: Container(
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }

  Widget singleLogo(double align, img) {
    align = (align + 1) / 2;
    var leftPos = widget.width * align - WaveClipper.logoSize / 2;
    var leftCenterPos = align * widget.width;
    var degree =
        cos(animation.value + leftCenterPos * WaveClipper.waveDouble) * 45 * .3;
    return Positioned(
      left: leftPos,
      top: WaveClipper.getYWithX(
        leftCenterPos.toInt(),
        animation.value,
        topMargin: 0,
      ),
      child: RotationTransition(
        turns: AlwaysStoppedAnimation(degree / 360),
        child: Image.asset(img,
            width: WaveClipper.logoSize, height: WaveClipper.logoSize),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  WaveClipper(this.animationValue);
  final double animationValue;
  @override
  Path getClip(Size size) {
    var p = Path();
    var points = <Offset>[];
    for (var x = 0; x < size.width; x++) {
      points.add(
        Offset(
          x.toDouble(),
          WaveClipper.getYWithX(x, animationValue),
        ),
      );
    }

    p.moveTo(
      0,
      WaveClipper.getYWithX(0, animationValue),
    );
    p.addPolygon(points, false);

    p.lineTo(size.width, size.height);
    p.lineTo(0, size.height);

    return p;
  }

  static const double waveHeight = 50;
  static const double logoSize = 100;
  static const double waveDouble = .015;
  static double getYWithX(int x, double animationValue,
      {double topMargin = logoSize / 1.5}) {
    var y = ((sin(animationValue + x * waveDouble) + 1) / 2) * waveHeight +
        topMargin;
    return y;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
    throw UnimplementedError();
  }
}
