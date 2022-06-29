import 'package:flutter/material.dart';
import 'package:online_shop/constans.dart';
import 'package:online_shop/models/product.dart';
import 'package:online_shop/screens/details/components/product_title_whit_image.dart';

class BodyDetailWidget extends StatelessWidget {
  const BodyDetailWidget({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: [
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
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Color'),
                          Row(
                            children: [
                              ColorDotWidget(
                                color: Colors.blue,
                              ),
                              ColorDotWidget(
                                color: Colors.blue,
                              ),
                              ColorDotWidget(
                                color: Colors.blue,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            ProductTaleWithImage(product: product)
          ]),
        )
      ]),
    );
  }
}

class ColorDotWidget extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDotWidget({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultPadding / 4,
        right: kDefaultPadding / 2,
      ),
      padding: EdgeInsets.all(2),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: color),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
