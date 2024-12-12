import 'package:flutter/material.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    required this.height,
    this.width = double.maxFinite,
    this.radius = 400,
    this.padding = 0,
    this.child,
    this.margin,
    this.backgroundColor = Colors.red,
  });

  final double height;
  final double? width;
  final double radius;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor!.withOpacity(0.4),
      ),
      child: child,
    );
  }
}