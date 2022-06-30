import 'package:flutter/material.dart';
import 'package:online_shop/constans.dart';
import 'package:online_shop/models/product.dart';
import 'package:online_shop/screens/details/components/color_dot.dart';
import 'package:online_shop/screens/details/components/color_size.dart';
import 'package:online_shop/screens/details/components/description.dart';
import 'package:online_shop/screens/details/components/product_title_whit_image.dart';

class BodyDetailWidget extends StatelessWidget {
  const BodyDetailWidget({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(children: [
              Container(
                // height: 500,
                padding: EdgeInsets.only(
                    top: size.height * 0.1,
                    left: kDefaultPadding,
                    right: kDefaultPadding),
                margin: EdgeInsets.only(
                  top: size.height * 0.36,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(24),
                    topLeft: Radius.circular(24),
                  ),
                ),
                child: Column(
                  children: [
                    ColorAndSizeWidget(product: product),
                    DescriptionWidget(product: product),
                    CartCounterWidget(),
                  ],
                ),
              ),
              ProductTaleWithImage(product: product)
            ]),
          ),
        ],
      ),
    );
  }
}

class CartCounterWidget extends StatefulWidget {
  CartCounterWidget({Key? key}) : super(key: key);
  int numOfItems = 1;
  @override
  State<CartCounterWidget> createState() => _CartCountWidgetState();
}

class _CartCountWidgetState extends State<CartCounterWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildCountButton(icon: Icons.remove, press: () {}),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            '01',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildCountButton(icon: Icons.add, press: () {}),
      ],
    );
  }

  SizedBox buildCountButton({IconData? icon, Function()? press}) {
    return SizedBox(
        width: 40,
        height: 32,
        child: ElevatedButton(
          onPressed: press,
          child: Icon(icon),
        ));
  }
}
