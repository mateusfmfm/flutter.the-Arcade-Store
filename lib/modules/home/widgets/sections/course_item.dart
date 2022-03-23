import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const img =
        "https://thepopinsider.com/wp-content/uploads/2020/05/SternPinball_TMNT_Featured.jpg";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Flexible(
          child: Image.asset(
            "assets/maxresdefault.jpg",
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          "Teenage Mutant Ninja Turtle Pro",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
        ),
        const SizedBox(height: 6),
        const Text(
          "Stern",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 12, color: Colors.grey),
        ),
        const SizedBox(height: 6),
        const Text(
          "U\$6.000,00",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
        ),
      ],
    );
  }
}
