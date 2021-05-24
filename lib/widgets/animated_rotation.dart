import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RotationArrow extends StatefulWidget {
  @override
  _RotationArrowState createState() => _RotationArrowState();
}

class _RotationArrowState extends State<RotationArrow>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * math.pi,
          child: child,
        );
      },
      child: Icon(
        FontAwesomeIcons.sync,
        color: Color(0xff164172),
        size: 35,
      ),
    );
  }
}
