import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_shop/constans.dart';
import 'package:online_shop/models/product.dart';
import 'package:online_shop/screens/details/components/color_dot.dart';
import 'package:online_shop/screens/details/components/color_size.dart';
import 'package:online_shop/screens/details/components/description.dart';
import 'package:online_shop/screens/details/components/product_title_whit_image.dart';

import 'cartCounter.dart';
import 'fav_cart.dart';

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
                    FavCartWidget(),
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
