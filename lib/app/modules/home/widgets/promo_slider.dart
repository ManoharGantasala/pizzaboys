import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:pizza_boys/app/modules/home/widgets/carousel_card.dart';
import 'package:pizza_boys/app/modules/home/widgets/circular_container.dart';
import 'package:pizza_boys/utils/constants/colors.dart';
import 'package:pizza_boys/utils/constants/sizes.dart';

class AppPromoSlider extends StatelessWidget {
  const AppPromoSlider({
    super.key,
    required this.textTheme,
    required this.slides,
    required this.onPageChanged,
    required this.currentIndex,
  });

  final TextTheme textTheme;
  final List<PromoSlide> slides;
  final void Function(int index, CarouselPageChangedReason reason)
      onPageChanged;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            viewportFraction: 0.8,
            onPageChanged: onPageChanged,
          ),
          items: slides
              .map((slide) => CarouselCard(
                    textTheme: textTheme,
                    title: slide.cardTitle,
                    image: slide.url,
                    discount: slide.discount,
                    orderNow: slide.onClick,
                  ))
              .toList(),
        ),
        const SizedBox(height: TSizes.spaceBetween),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < slides.length; i++)
              TCircularContainer(
                height: 15,
                width: 15,
                margin: const EdgeInsets.only(right: 10),
                backgroundColor: i == currentIndex ? TColors.primaryColor: TColors.darkerGrey,
              ),
          ],
        ),
      ],
    );
  }
}

class PromoSlide {
  final String cardTitle;
  final String discount;
  final String url;
  final void Function()? onClick;

  PromoSlide({
    required this.cardTitle,
    required this.discount,
    required this.url,
    this.onClick,
  });
}
