import 'package:flutter/material.dart';
import 'package:recipe_food/screens/home.dart';

import '../constant/constant.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/welcome.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
              child: Column(
            children: [
              const SizedBox(
                height: defaultSpacing * 36,
              ),
              const Text(
                "Welcome to",
                style:
                    TextStyle(color: fontLight, fontSize: defaultRadius * 1.7),
              ),
              const SizedBox(
                height: defaultSpacing - 10,
              ),
              const Text(
                "TasteNice Recipe",
                style: TextStyle(
                    color: primaryDark,
                    fontSize: defaultRadius * 2.4,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: defaultSpacing * 1.5,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all<Size>(
                    const Size(200, 60),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(primaryDark),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                child: const Text(
                  "Tour to Recipes",
                  style: TextStyle(
                      color: secondaryDark,
                      fontWeight: FontWeight.w600,
                      fontSize: defaultRadius * 1.5),
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
