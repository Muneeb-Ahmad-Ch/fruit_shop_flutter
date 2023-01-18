import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ItemTiles extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color[100]!,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              // height: MediaQuery.of(context).size.height * 0.2,
              // width: MediaQuery.of(context).size.width * 0.2,
              height: 80,
              // width: 100,
              child: Image.asset(imagePath),
            ),
            FittedBox(
              fit: BoxFit.cover,
              child: AutoSizeText(
                itemName,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            MaterialButton(
              padding: const EdgeInsets.all(15),
              color: color[800]!,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              textColor: Colors.white,
              onPressed: () {},
              child: Text('$itemPrice PKR'),
            )
          ],
        ),
      ),
    );
  }
}
