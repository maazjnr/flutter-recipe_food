import 'package:flutter/material.dart';

import '../constant/constant.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: const [
            SizedBox(height: defaultSpacing * 3,),
            ListTile(
              leading: Text('Find Food', style: TextStyle(
                fontSize: defaultSpacing,
                fontWeight: FontWeight.w600,
                color: primaryLight
              ),),
              trailing: Icon(Icons.notifications),
            )
          ],
        ),
      ),
    );
  }
}