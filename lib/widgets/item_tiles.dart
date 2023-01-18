import 'package:flutter/material.dart';

class ItemTiles extends StatefulWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;

  const ItemTiles(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.imagePath,
      required this.color});

  @override
  State<ItemTiles> createState() => _ItemTilesState();
}

class _ItemTilesState extends State<ItemTiles> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
