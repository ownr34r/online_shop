import 'package:flutter/material.dart';
import 'package:online_shop/constans.dart';
import 'package:online_shop/models/product.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        product.discription,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
