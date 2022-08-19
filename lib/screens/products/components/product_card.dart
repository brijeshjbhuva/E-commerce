import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/models/Product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../details/details_screen.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          DetailsScreen.routeName,
          arguments: ProductDetailsArguments(product: product),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Container(
                constraints: BoxConstraints.expand(),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(product.images[0]),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            product.title,
            style: TextStyle(color: Colors.black),
            maxLines: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$${product.price}",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(18),
                  fontWeight: FontWeight.w600,
                  color: kPrimaryColor,
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                  height: getProportionateScreenWidth(28),
                  width: getProportionateScreenWidth(28),
                  decoration: BoxDecoration(
                    color: product.isFavourite
                        ? kPrimaryColor.withOpacity(0.15)
                        : kSecondaryColor.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    "assets/icons/Heart Icon_2.svg",
                    color: product.isFavourite
                        ? Color(0xFFFF4848)
                        : Color(0xFFDBDEE4),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
