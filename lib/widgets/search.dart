import 'package:flutter/material.dart';

class Search extends StatelessWidget {

 final myController = TextEditingController();
   Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        child: TextField(
      controller: myController,
      decoration: InputDecoration(
      labelText: 'Enter your text here',
       suffixIcon: Icon(Icons.search),
       border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(color: Color.fromARGB(255, 25, 17, 17)),
    ),
      ),
      onChanged: (text) {
      // Do something with the user input
      
      },
    ),
      ),
    );
  }
}