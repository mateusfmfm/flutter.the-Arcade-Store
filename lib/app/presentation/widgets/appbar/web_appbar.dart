import 'package:flutter/material.dart';
import 'package:flutter_arcade_store/app/presentation/widgets/appbar/web_appbar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          const Text("The Arcade Store"),
          const SizedBox(width: 32),
          const WebAppBarResponsiveContent(),
          GestureDetector(
            onTap: () {},
            child: const Icon(Icons.shopping_cart),
          ),
          const SizedBox(width: 24),
          SizedBox(
            height: 38,
            width: 100,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                side: const BorderSide(width: 2, color: Colors.white),
              ),
              onPressed: () {},
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            height: 38,
            width: 100,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                side: const BorderSide(width: 2, color: Colors.white),
              ),
              onPressed: () {},
              child: const Text(
                'Register',
                style: TextStyle(color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
