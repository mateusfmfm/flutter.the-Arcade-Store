import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  const WebAppBarResponsiveContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: ((context, constraints) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Row(
                    children: const [
                      SizedBox(width: 4),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search your machine",
                              isCollapsed: true),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              if (constraints.maxWidth >= 400) ...[
                const SizedBox(width: 32),
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
                      'Learn',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
              if (constraints.maxWidth >= 500) ...[
                const SizedBox(width: 16),
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
                      'See',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
              const SizedBox(width: 24),
            ],
          );
        }),
      ),
    );
  }
}
