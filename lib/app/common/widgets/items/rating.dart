import 'package:flutter/material.dart';
import 'package:pizza_boys/utils/constants/colors.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
    required this.foodRating,
  });

  final String foodRating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star,color: TColors.gold,size: 18,),
        Text(foodRating,)
      ],
    );
  }
}