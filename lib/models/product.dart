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

List<Product> product = [
  Product(
    image: 'asset/image/hammer.png',
    title: 'office Code',
    discription: "молоток ",
    price: 1212,
    size: 12,
    id: 1,
    color: Color.fromARGB(255, 67, 174, 61),
  ),
  Product(
    image: 'asset/image/screwdriver.png',
    title: 'office Code',
    discription: "отвертка",
    price: 1212,
    size: 12,
    id: 1,
    color: Color.fromARGB(255, 61, 130, 174),
  ),
  Product(
    image: 'asset/image/wrench.png',
    title: 'office Code',
    discription: "разводной ключ",
    price: 1212,
    size: 12,
    id: 1,
    color: Color.fromARGB(255, 174, 61, 117),
  ),
];