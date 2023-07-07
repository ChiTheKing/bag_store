import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/bag_model.dart';
import '../models/cart.dart';
import '../widgets/cart_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.only(left: 15, bottom: 8, right: 15,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Your Cart",
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Expanded(child: ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder: (context, index){
              Bag individualBag = value.getUserCart()[index];
              return CartItem(bag: individualBag,);
            },),),
          ],
        ),
      ),
    );
  }
}
