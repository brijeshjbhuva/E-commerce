import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/top_rounded_container.dart';
import 'package:shop_app/size_config.dart';

import '../../../components/rounded_icon_btn.dart';
import 'product_description.dart';
import 'product_images.dart';

class Body extends StatefulWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BodyState();
  }
}

class _BodyState extends State<Body> {
  var _count = 1;
  final _qtyController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _init();
  }

  _init() {
    _qtyController.text = _count.toString();
  }

  _increment() {
    setState(() {
      _count++;
      _qtyController.text = _count.toString();
    });
  }

  _decrement() {
    setState(() {
      if (_count > 1) _count--;
      _qtyController.text = _count.toString();
    });
  }

  // dispose it when the widget is unmounted
  @override
  void dispose() {
    _qtyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: widget.product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: widget.product,
                pressOnSeeMore: () {},
              ),
              SizedBox(height: getProportionateScreenWidth(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundedIconBtn(
                    icon: Icons.remove,
                    press: _decrement,
                  ),
                  Container(
                    width: getProportionateScreenWidth(56),
                    alignment: Alignment.center,
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      autofocus: false,
                      controller: _qtyController,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: kDividerColor)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: kDividerColor)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: kDividerColor)),
                        contentPadding: EdgeInsets.zero,
                        hintText: "1",
                      ),
                      onChanged: (text) {
                        if (text.isEmpty) {
                          _count = 1;
                        } else {
                          _count = int.parse(text);
                        }
                      },
                    ),
                  ),
                  RoundedIconBtn(
                    icon: Icons.add,
                    press: _increment,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.screenWidth * 0.15,
                  right: SizeConfig.screenWidth * 0.15,
                  bottom: getProportionateScreenWidth(40),
                  top: getProportionateScreenWidth(15),
                ),
                child: DefaultButton(
                  text: "Add To Cart",
                  press: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
