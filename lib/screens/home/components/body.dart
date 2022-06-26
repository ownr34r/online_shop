import 'package:flutter/material.dart';
import 'package:online_shop/constans.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}

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
