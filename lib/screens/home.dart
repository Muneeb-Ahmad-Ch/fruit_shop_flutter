import 'package:flutter/material.dart';
import 'package:fruit_shop_app/models/cart_model.dart';
import 'package:fruit_shop_app/widgets/item_tiles.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Welcome to Store!",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Let's order something fresh",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(),
          ),
          Expanded(child: Consumer<CartModel>(
            builder: ((context, value, child) {
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: MediaQuery.of(context).size.width ~/ 200),
                itemCount: value.items.length,
                itemBuilder: (context, index) {
                  return ItemTiles(
                    itemName: value.items[index][0],
                    itemPrice: value.items[index][1],
                    imagePath: value.items[index][2],
                    color: value.items[index][3],
                  );
                },
              );
            }),
          )),
        ],
      )),
    );
  }
}
