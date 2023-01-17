import 'package:flutter/material.dart';
import 'package:fruit_shop_app/screens/home.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: 40),
            child: Image.asset(
              "assets/images/fruits.png",
              height: 220,
              width: 300,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 50,
              right: 50,
              bottom: 20,
            ),
            child: Text(
              "Your one-stop destination for all your fruit needs!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 50,
              right: 50,
              bottom: 80,
            ),
            child: Text(
              "Fresh Items Everyday",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 70),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                backgroundColor: Colors.deepPurpleAccent),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return Home();
              }));
            },
            child: const Text("Get Started", style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}
