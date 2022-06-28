import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: const Text("The Arcade Store"),
      centerTitle: true,
      actions: [
        GestureDetector(onTap: () {}, child: const Icon(Icons.search)),
        const SizedBox(width: 8),
        GestureDetector(onTap: () {}, child: const Icon(Icons.shopping_cart)),
        const SizedBox(width: 8),
      ],
    );
  }
}
