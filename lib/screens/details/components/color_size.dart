import 'package:flutter/material.dart';
import 'package:online_shop/constans.dart';
import 'package:online_shop/models/product.dart';
import 'package:online_shop/screens/details/components/color_dot.dart';

class ColorAndSizeWidget extends StatelessWidget {
  const ColorAndSizeWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Color'),
              Row(
                children: [
                  ColorDotWidget(
                    color: Colors.blue,
                    isSelected: true,
                  ),
                  ColorDotWidget(
                    color: Colors.red,
                  ),
                  ColorDotWidget(
                    color: Colors.yellow,
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                text: 'Size\n',
                style: TextStyle(color: kTextColor),
              ),
              TextSpan(
                text: '${product.size}cm',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
