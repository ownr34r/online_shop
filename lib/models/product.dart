import 'package:flutter/material.dart';

class Product {
  final String image;
  final String title;
  final String discription;
  final int price;
  final int size;
  final int id;
  final Color color;

  Product({
    required this.image,
    required this.title,
    required this.discription,
    required this.price,
    required this.size,
    required this.id,
    required this.color,
  });
}

List<Product> products = [
  Product(
    image: 'assets/images/bag_1.png',
    title: 'office Code',
    discription: "молоток ",
    price: 231,
    size: 12,
    id: 1,
    color: const Color.fromARGB(255, 67, 174, 61),
  ),
  Product(
    image: 'assets/images/bag_2.png',
    title: 'office Code',
    discription: "отвертка",
    price: 344,
    size: 12,
    id: 1,
    color: const Color.fromARGB(255, 61, 130, 174),
  ),
  Product(
    image: 'assets/images/bag_3.png',
    title: 'office Code',
    discription:
        "The characteristic of Elevated Button is the elevation increases when it's on pressed state. It's also possible to set the initial elevation by passing elevation parameter. For this kind of button, the elevation is set to 0 if the button is disabled. An elevation increase of 2 will be applied if the state is hovered or focused, while pressing the button increases the elevation by 6.",
    price: 542,
    size: 12,
    id: 1,
    color: const Color.fromARGB(255, 174, 61, 117),
  ),
  Product(
    image: 'assets/images/bag_4.png',
    title: 'office Code',
    discription: "не разводной ключ",
    price: 132,
    size: 12,
    id: 1,
    color: const Color.fromARGB(255, 149, 174, 61),
  ),
  Product(
    image: 'assets/images/bag_5.png',
    title: 'office Code',
    discription: "разводной не ключ",
    price: 212,
    size: 12,
    id: 1,
    color: const Color.fromARGB(255, 244, 4, 4),
  ),
  Product(
    image: 'assets/images/bag_6.png',
    title: 'office Code',
    discription: "ключ  ключ",
    price: 761,
    size: 12,
    id: 1,
    color: const Color.fromARGB(255, 63, 48, 9),
  ),
];
