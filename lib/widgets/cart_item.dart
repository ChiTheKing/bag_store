import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/bag_model.dart';
import '../models/cart.dart';

class CartItem extends StatefulWidget {
  Bag bag;

  CartItem({super.key, required this.bag});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  // remove item from cart
  removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.bag);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.only(
        bottom: 10,
        left: 10,
        right: 15,
      ),
      child: ListTile(
        leading: Image.asset(widget.bag.imageUrl),
        title: Text(widget.bag.name),
        subtitle: Text(widget.bag.price),
        trailing: IconButton(
          icon: Icon(
            Icons.delete,
          ),
          onPressed: removeItemFromCart(),
        ),
      ),
    );
  }
}
