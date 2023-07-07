import 'package:bag_store/models/bag_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/bag_tile.dart';
import '../models/cart.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addBagToCart(Bag bag) {
    Provider.of<Cart>(context, listen: false).addItemToCart(bag);
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text('Added To Cart 🙂'),
      content: Text('open cart for checkout'),
    ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search",
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Our inventory",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "We have just the bag for you",
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 13,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Bag bag = value.getBagList()[index];
                return BagTile(
                  bag: bag,
                  onTap: () => addBagToCart(bag),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 9.0, left: 9.0, right: 9.0),
            child: Divider(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
