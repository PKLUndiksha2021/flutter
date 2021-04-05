import 'package:flutter/material.dart';

class RadiantGradientMask extends StatelessWidget {
  RadiantGradientMask({this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => RadialGradient(
        center: Alignment.topLeft,
        radius: 1.50,
        colors: [Color(0xFF03A9F4), Color(0xFF01579B)],
        tileMode: TileMode.clamp,
      ).createShader(bounds),
      child: child,
    );
  }
}
