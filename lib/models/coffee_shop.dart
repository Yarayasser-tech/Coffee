import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  // coffee for sale list
  final List<Coffee> _shop = [
    // black coffee
    Coffee(
      name: 'long black',
      price: "2.50",
      imagePath: "lib/images/coffee 1.png",
    ),

    // latte
    Coffee(name: 'latte', price: "3.50", imagePath: "lib/images/coffee 2.png"),
    // espresso
    Coffee(
      name: 'espresso',
      price: "2.00",
      imagePath: "lib/images/coffee 3.png",
    ),
    // iced coffee
    Coffee(
      name: 'iced coffee',
      price: "3.00",
      imagePath: "lib/images/coffee 4.png",
    ),
  ];

  //user cart
  final List<Coffee> _userCart = [];

  // get coffee list
  List<Coffee> get coffeeShop => _shop;

  // get user cart
  List<Coffee> get userCart => _userCart;

  // add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners(); // notify listeners to update the UI
  }

  // remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
  }
}
