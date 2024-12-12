import 'package:get/get.dart';
import 'package:pizza_boys/app/modules/home/models/food_items.dart';
import 'package:pizza_boys/app/modules/home/widgets/promo_slider.dart';
import 'package:pizza_boys/utils/constants/image_strings.dart';

class HomeController extends GetxController {
  final carousalCurrentIndex = 0.obs;
  final foodMap = {
    "EggBurger": TImages.eggBurger,
    "CrispyChicken": TImages.crispyChicken,
    "Burger": TImages.burger,
    "GrilledChicken": TImages.grilledChicken,
    "Pizza": TImages.pizza,
    "Shawarma": TImages.shawarma,
  };

  void updatePageIndicator(index) {
    carousalCurrentIndex.value = index;
  }

  final List<PromoSlide> slides = [
    PromoSlide(
      cardTitle: "Grab Our Exclusive Food Discounts Now!",
      discount: "45%",
      url: TImages.burger,
    ),
    PromoSlide(
        cardTitle: "Special Festival Offers",
        discount: "50%",
        url: TImages.pizza),
    PromoSlide(
        cardTitle: "Weekly Specials",
        discount: "30%",
        url: TImages.grilledChicken),
  ];

  final List<FoodItems> foodItems = [
    FoodItems(
        title: "Grilled Chicken",
        subTitle: "Juicy, flame-grilled perfection.",
        price: "499",
        imageUrl: TImages.grilledChicken,
        rating: "4.5",
        discount: "50%"
    ),
    FoodItems(
        title: "Pizza",
        subTitle: "Cheesy, flavorful, and loaded with your favorite toppings, our pizza is a slice of heaven in every bite!",
        price: "299",
        rating: "3.5",
        imageUrl: TImages.pizza),
    FoodItems(
        title: "Burger",
        subTitle: "Juicy, perfectly seasoned, and stacked with fresh toppings, our burger is a bite of pure satisfaction!",
        price: "199",
        rating: "3.0",
        imageUrl: TImages.burger),
    FoodItems(
        title: "Shawarma",
        subTitle: "Succulent, marinated meat wrapped in soft bread, bursting with flavorful spices and fresh veggies.",
        price: "99",
        rating: "4.2",
        imageUrl: TImages.shawarma),
    FoodItems(
        title: "CrispyChicken",
        subTitle: "Golden, crunchy, and irresistibly juicy fried chicken perfection.",
        price: "355",
        rating: "4.0",
        imageUrl: TImages.crispyChicken),
    FoodItems(
        title: "EggBurger",
        subTitle: "A savory fusion of egg and juicy patty in a fluffy bun.",
        price: "69",
        rating: "2.9",
        imageUrl: TImages.eggBurger),
  ];
}
