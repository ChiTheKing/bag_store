import 'package:flutter/material.dart';
import 'bag_model.dart';

class Cart extends ChangeNotifier {
  List<Bag> bagShop = [
    Bag(
        imageUrl: 'assets/images/pngwing.com (1).png',
        name: "Blue Queens",
        price: '49.99',
        description: "size 50 ,Red , pure leather \n DURABLE"),
    Bag(
        imageUrl: 'assets/images/pngwing.com (2).png',
        name: "FairyTale",
        price: '599.99',
        description: "size 50 ,Blue , pure leather \n DURABLE"),
    Bag(
        imageUrl: 'assets/images/pngwing.com (3).png',
        name: "Italian Couture",
        price: '49.99',
        description: "size 80 ,Pink , pure leather \n DURABLE"),
    Bag(
        imageUrl: 'assets/images/pngwing.com (4).png',
        name: "Barbie Vuitton",
        price: '23.99',
        description: "size 50 ,Milky , pure leather \n DURABLE"),
    Bag(
        imageUrl: 'assets/images/pngwing.com (5).png',
        name: "Foxy Feline",
        price: '85.99',
        description: "size 50 ,Blue , pure leather \n DURABLE"),
    Bag(
        imageUrl: 'assets/images/pngwing.com (6).png',
        name: "Lady Lux",
        price: '3.99',
        description: "size 50 ,Red , pure leather \n DURABLE"),
    Bag(
        imageUrl: 'assets/images/pngwing.com (7).png',
        name: "Floral Vuitton",
        price: '17.99',
        description: "size 50 ,Dark Blue , pure leather \n DURABLE"),
    Bag(
        imageUrl: 'assets/images/pngwing.com (8).png',
        name: "louis Wallet",
        price: '21.99',
        description: "size 30 ,Pink , pure leather \n DURABLE"),
    Bag(
        imageUrl: 'assets/images/pngwing.com (9).png',
        name: "LV Back Pack",
        price: '199.99',
        description: "size 50 ,Brown , pure leather \n DURABLE"),
    Bag(
        imageUrl: 'assets/images/pngwing.com (10).png',
        name: "Princess Pony",
        price: '52.99',
        description: "size 60 ,Brown , pure leather \n DURABLE"),
    Bag(
        imageUrl: 'assets/images/pngwing.com (12).png',
        name: "LV Little Princess",
        price: '69.99',
        description: "size 50 ,Purple , pure leather \n DURABLE"),
    Bag(
        imageUrl: 'assets/images/pngwing.com (13).png',
        name: "LV Picnic bag",
        price: '89.99',
        description: "size 30 , Dark Brown , pure leather \n DURABLE"),
    Bag(
        imageUrl: 'assets/images/pngwing.com (14).png',
        name: "Gent Bag",
        price: '17.99',
        description: "size 50 ,Brown , pure leather \n DURABLE"),
  ];
List<Bag> userCart = [];

  List<Bag> getBagList() {
    return bagShop;
  }

  List<Bag> getUserCart() {
    return userCart;
  }

  void addItemToCart(Bag bag) {
    userCart.add(bag);
    notifyListeners();
  }

  void removeItemFromCart(Bag bag) {
    userCart.remove(bag);
    notifyListeners();
  }
}
