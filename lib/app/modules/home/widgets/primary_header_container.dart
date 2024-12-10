import 'package:flutter/material.dart';
import 'package:pizza_boys/app/modules/home/widgets/circular_container.dart';
import 'package:pizza_boys/app/modules/home/widgets/curved_edges_widget.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.height,
    required this.child,
  });

  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      height: height,
      child: Container(
        color: Colors.black,
        padding: EdgeInsets.zero,
        child: SizedBox(
          height: height / 2,
          child:  Stack(
            children: [
              const Positioned(
                top: -150,
                right: -250,
                child: TCircularContainer(
                  height: 400,
                  width: 400,
                  backgroundColor: Colors.redAccent,
                ),
              ),
              const Positioned(
                top: 100,
                right: -300,
                child: TCircularContainer(
                  height: 400,
                  width: 400,
                  backgroundColor: Colors.redAccent,
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}