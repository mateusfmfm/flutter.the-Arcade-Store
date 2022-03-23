import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      cursorColor: Colors.blue,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          hintStyle: TextStyle(color: Colors.white),
          hintText: "Search your machine!",
          suffixIcon: Icon(
            Icons.search,
            color: Colors.white,
          )),
    );
  }
}