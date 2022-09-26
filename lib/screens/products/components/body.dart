import 'package:flutter/material.dart';

import '../../../models/Product.dart';
import '../../../size_config.dart';
import 'product_card.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: GridView.builder(
              itemCount: demoProducts.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: getProportionateScreenWidth(20.0),
                  mainAxisSpacing: getProportionateScreenHeight(20.0)),
              itemBuilder: (context, index) =>
                  ProductCard(product: demoProducts[index]),
            ),
          ),
        ),
      ],
    );
  }
}
