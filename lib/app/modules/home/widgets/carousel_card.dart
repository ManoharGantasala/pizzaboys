import 'package:flutter/material.dart';
import 'package:pizza_boys/utils/constants/colors.dart';

class CarouselCard extends StatelessWidget {
  const CarouselCard({
    super.key,
    required this.textTheme,
    required this.title,
    required this.image,
    required this.discount,
    this.orderNow,
  });

  final TextTheme textTheme;
  final String title;
  final String image;
  final String discount;
  final void Function()? orderNow;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4,
      color: TColors.primaryColor,
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: textTheme.headlineSmall!.apply(color: TColors.white),
                  ),
                  const SizedBox(height: 12),
                  FilledButton(
                    style: FilledButton.styleFrom(
                        backgroundColor: TColors.black,
                        padding: const EdgeInsets.all(12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                    onPressed: () {},
                    child: const Text(
                      "Order Now",
                      style: TextStyle(
                        color: TColors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          // Right Section: Image with Discount Badge
          Expanded(
            flex: 3,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                // Food Image
                Image.asset(
                  image,
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
                // Discount Badge
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Discount\n$discount%",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
