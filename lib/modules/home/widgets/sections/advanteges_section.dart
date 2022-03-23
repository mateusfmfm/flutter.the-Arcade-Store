import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdvantageSection extends StatelessWidget {
  const AdvantageSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey))),
      child: Wrap(
        runSpacing: 16,
        alignment: WrapAlignment.spaceEvenly,
        children: [
          buildAdvantege("Quality garantee!",
              "Only original machines with original pieces"),
          buildAdvantege(
              "+10.000 customers!", "All the world receive our machines"),
          buildAdvantege("Any Brand!",
              "From 70s to 2020s, find any machine"),
        ],
      ),
    );
  }

  Widget buildAdvantege(String title, String subTitle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.star,
          color: Colors.white,
          size: 50,
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16)),
            Text(subTitle, style: const TextStyle(color: Colors.white))
          ],
        )
      ],
    );
  }
}
