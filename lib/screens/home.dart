import 'package:flutter/material.dart';

import '../constant/constant.dart';
import '../widgets/search.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const SizedBox(
              height: defaultSpacing * 3,
            ),
            const ListTile(
              leading: Text(
                'Find Food',
                style: TextStyle(
                    fontSize: defaultSpacing,
                    fontWeight: FontWeight.w600,
                    color: primaryLight),
              ),
              trailing: Icon(Icons.notifications),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultSpacing * 1.3),
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Category",
                        style: TextStyle(
                            fontSize: defaultRadius * 1.5, color: primaryDark),
                      )),
                const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Ingredient",
                        style: TextStyle(
                            fontSize: defaultRadius * 1.5, 
                            color: secondaryLight
                            ),
                      )),
                ],
              ),
            ),
            
             Search()
          ],
        ),
      ),
    );
  }
}
