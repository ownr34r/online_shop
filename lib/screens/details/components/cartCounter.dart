import 'package:flutter/material.dart';
import 'package:online_shop/constans.dart';

class CartCounterWidget extends StatefulWidget {
  CartCounterWidget({Key? key}) : super(key: key);

  @override
  State<CartCounterWidget> createState() => _CartCountWidgetState();
}

class _CartCountWidgetState extends State<CartCounterWidget> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildCountButton(
            icon: Icons.remove,
            press: () {
              if (numOfItems > 1) {
                setState(() {
                  numOfItems--;
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfItems.toString().padLeft(1, '0'),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildCountButton(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItems++;
              });
            }),
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
      ),
    );
  }
}
