import 'package:flutter/material.dart';
import 'package:pizza_boys/app/modules/home/widgets/curved_edges.dart';

class TCurvedEdgesWidget extends StatelessWidget {
  const TCurvedEdgesWidget({
    super.key,
    required this.height,
    this.child,
  });

  final double height;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    print("TCurvedEdgesWidget: child is ${child != null ? 'not null' : 'null'}");
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: child ?? Container(),
    );
  }
}