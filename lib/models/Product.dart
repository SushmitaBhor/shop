import 'package:flutter/material.dart';

class Product {
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;
  final int id;

  Product({
    @required this.images,
    @required this.colors,
    this.rating = 0.0,
    @required this.price,
    this.isFavourite = false,
    this.isPopular = false,
    @required this.title,
    @required this.description,
    @required this.id,
  });
}

List<Product> demoProducts = [
  Product(
      images: [
        "assets/images/ps4_console_white_1.png",
        "assets/images/ps4_console_white_2.png",
        "assets/images/ps4_console_white_3.png",
        "assets/images/ps4_console_white_4.png"
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836D88),
        Color(0xFFDEC89C),
        Colors.white
      ],
      title: "Wireless Controller for P54",
      price: 64.99,
      description:
          '''DualShock 4 Wireless Controller PS4 and PC compatible. Item PS5 compatible only when playing PS4 games.''',
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
      id: 1),
  Product(
      images: [
        "assets/images/ps4_console_blue_1.png",
        "assets/images/ps4_console_blue_2.png",
        "assets/images/ps4_console_blue_4.png",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836D88),
        Color(0xFFDEC89C),
        Colors.white
      ],
      title: "Wireless Controller for P54",
      price: 64.99,
      description:
          '''DualShock 4 Wireless Controller PS4 and PC compatible. Item PS5 compatible only when playing PS4 games.''',
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
      id: 2),
  Product(
      images: [
        "assets/images/shoes2.png",
        "assets/images/product 1 image.png",
        "assets/images/Image Popular Product 1.png",
        "assets/images/wireless headset.png"
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836D88),
        Color(0xFFDEC89C),
        Colors.white
      ],
      title: "Wireless Controller for P54",
      price: 64.99,
      description:
          '''DualShock 4 Wireless Controller PS4 and PC compatible. Item PS5 compatible only when playing PS4 games.''',
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
      id: 3),
  Product(
      images: [
        "assets/images/wireless headset.png",
        "assets/images/ps4_console_white_2.png",
        "assets/images/ps4_console_white_3.png",
        "assets/images/ps4_console_white_4.png"
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836D88),
        Color(0xFFDEC89C),
        Colors.white
      ],
      title: "Wireless Controller for P54",
      price: 64.99,
      description:
          ''''DualShock 4 Wireless Controller PS4 and PC compatible.DualShock 4 Wireless Controller PS4 and PC compatible. Item PS5 compatible only when playing PS4 games. Item PS5 compatible only when playing PS4 games.DualShock 4 Wireless Controller PS4 and PC compatible. Item PS5 compatible only when playing PS4 games.''',
      rating: 4.8,
      isFavourite: false,
      isPopular: true,
      id: 3),
];
