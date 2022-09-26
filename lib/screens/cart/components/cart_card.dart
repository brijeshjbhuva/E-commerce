import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop_app/models/Cart.dart';

import '../../../components/rounded_icon_btn.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class CartCard extends StatefulWidget {
  const CartCard({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  State<StatefulWidget> createState() {
    return _CartCardState();
  }
}

class _CartCardState extends State<CartCard> {
  @override
  Widget build(BuildContext context) {
    return _buildCartTile(widget.cart);
  }

  Widget _buildCartTile(Cart cart) {
    final controller = TextEditingController(text: cart.numOfItem.toString());
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: getProportionateScreenWidth(80),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Hero(
                  tag: cart.product.id,
                  child: Image.asset(cart.product.images[0])),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cart.product.title,
                style: TextStyle(color: Colors.black, fontSize: 16),
                maxLines: 2,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text(
                      "${cart.product.qty}${cart.product.unit}/${cart.product.price}",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryColor)),
                  const Spacer(),
                  RoundedIconBtn(
                    icon: Icons.remove,
                    press: () {
                      setState(() {
                        if (cart.numOfItem > 1) {
                          cart.numOfItem--;
                          controller.text = cart.numOfItem.toString();
                          // _bloc.add(UpdateEvent(cart: cart));
                        }
                      });
                    },
                  ),
                  Container(
                    width: getProportionateScreenWidth(50),
                    alignment: Alignment.center,
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      autofocus: false,
                      controller: controller,
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
                          cart.numOfItem = 1;
                        } else {
                          cart.numOfItem = int.parse(text);
                        }
                        // _bloc.add(UpdateEvent(cart: cart));
                      },
                    ),
                  ),
                  RoundedIconBtn(
                    icon: Icons.add,
                    press: () {
                      setState(() {
                        cart.numOfItem++;
                        controller.text = cart.numOfItem.toString();
                        // _bloc.add(UpdateEvent(cart: cart));
                      });
                    },
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
