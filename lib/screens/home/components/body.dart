import 'package:flutter/material.dart';
import 'package:online_shop/constans.dart';
import 'package:online_shop/models/product.dart';
import 'package:online_shop/screens/home/components/categories.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: GridView.builder(
            itemCount: product.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (context, index) => ItemCard(
              product: product[0],
              press: () {},
            ),
          ),
        )
      ],
    );
  }
}

<<<<<<< HEAD
class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(kDefaultPadding),
          height: 180,
          width: 160,
          decoration: BoxDecoration(
              color: product[0].color, borderRadius: BorderRadius.circular(16)),
          child: Image.asset(product[0].image),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
          child: Text(
            product[0].title,
            style: TextStyle(color: kTextLightColor),
          ),
        ),
        Text(
          '\$234',
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],

class Categories extends StatefulWidget {
  Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    'tools',
    'Jewellery',
    'Footwear',
    'Dresses',
  ];
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => buildCategory(index),
      ),

    );
  }

  Widget buildCategory(int index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Text(categories[index]),
      );
}
