import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_arcade_store/app/core/ui/breakpoints.dart';
import 'package:flutter_arcade_store/app/presentation/pages/home/widgets/sections/course_item.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return GridView.builder(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: constraints.maxWidth >= tabletBreakpoint ? 0 : 16),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: 20,
          itemBuilder: (context, index) {
            return const ProductItem();
          });
    });
  }
}
