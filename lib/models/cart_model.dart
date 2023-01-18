import "package:flutter/material.dart";

class CartModel extends ChangeNotifier {
  final List _items = [
    // name,price, image path, color
    ['Apple 1kg', '100', 'assets/images/apple.png', Colors.red],
    ['Banana 1dz', '70', 'assets/images/banana.png', Colors.yellow],
    [
      'Blackberry 1kg',
      '350',
      'assets/images/blackberry.png',
      Colors.deepPurple
    ],
    ['Cherry 1kg', '300', 'assets/images/cherry.png', Colors.red],
    ['Mango 1kg', '250', 'assets/images/mango.png', Colors.yellow],
    ['Orange 1kg', '170', 'assets/images/orange.png', Colors.orange],
    ['Peach 1kg', '130', 'assets/images/peach.png', Colors.orange],
    ['Strawberry 1kg', '230', 'assets/images/strawberry.png', Colors.red],
  ];
  get items => _items;
}
