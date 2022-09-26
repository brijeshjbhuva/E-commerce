import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';

import '../../../components/product_card.dart';
import '../../../size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Column(
        children: [
          SectionTitle(title: "Popular Products", press: () {}),
          SizedBox(height: getProportionateScreenWidth(20)),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            // to disable GridView's scrolling
            shrinkWrap: true,
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: getProportionateScreenWidth(20.0),
                mainAxisSpacing: getProportionateScreenHeight(20.0)),
            itemBuilder: (context, index) =>
                ProductCard(product: demoProducts[index]),
          ),
        ],
      ),
    );
  }
}
