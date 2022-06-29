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
    price: 2341,
    size: 12,
    id: 1,
    color: const Color.fromARGB(255, 67, 174, 61),
  ),
  Product(
    image: 'assets/images/bag_2.png',
    title: 'office Code',
    discription: "отвертка",
    price: 34654,
    size: 12,
    id: 1,
    color: const Color.fromARGB(255, 61, 130, 174),
  ),
  Product(
    image: 'assets/images/bag_3.png',
    title: 'office Code',
    discription: "разводной ключ",
    price: 5432,
    size: 12,
    id: 1,
    color: const Color.fromARGB(255, 174, 61, 117),
  ),
  Product(
    image: 'assets/images/bag_4.png',
    title: 'office Code',
    discription: "не разводной ключ",
    price: 1312,
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
    price: 7612,
    size: 12,
    id: 1,
    color: const Color.fromARGB(255, 63, 48, 9),
  ),
];
