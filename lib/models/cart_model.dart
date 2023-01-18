import "package:flutter/material.dart";

class CartModel extends ChangeNotifier {
  final List _items = [
    // name,price, image path, color
    ['Apple', '3.50', 'assets/images/apple.png', Colors.red],
    ['Banana', '2.00', 'assets/images/banana.png', Colors.yellow],
    ['Blackberry', '6.50', 'assets/images/blackberry.png', Colors.black87],
    ['Cherry', '5.50', 'assets/images/cherry.png', Colors.red],
    ['Mango', '4.50', 'assets/images/mango.png', Colors.yellow],
    ['Orange', '3.00', 'assets/images/orange.png', Colors.orange],
    ['Peach', '3.50', 'assets/images/peach.png', Colors.orange],
    ['Strawberry', '4.00', 'assets/images/strawberry.png', Colors.red],
  ];
}
