import 'package:flutter/material.dart';
import 'package:flutter_arcade_store/data/breakpoints.dart';
import 'package:flutter_arcade_store/modules/home/widgets/appbar/mobile_appbar.dart';
import 'package:flutter_arcade_store/modules/home/widgets/appbar/web_appbar.dart';
import 'package:flutter_arcade_store/modules/home/widgets/sections/advanteges_section.dart';
import 'package:flutter_arcade_store/modules/home/widgets/sections/courses_section.dart';
import 'package:flutter_arcade_store/modules/home/widgets/sections/top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: constraints.maxWidth < mobileBreakpoint
            ? const PreferredSize(
                child: MobileAppBar(),
                preferredSize: Size(double.infinity, 56),
              )
            : const PreferredSize(
                child: WebAppBar(),
                preferredSize: Size(double.infinity, 72),
              ),
        drawer: constraints.maxWidth < mobileBreakpoint ? const Drawer() : null,
        body: Align(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1400),
            child: ListView(
              children: const [
                TopSection(),
                AdvantageSection(),
                CoursesSection(),
              ],
            ),
          ),
        ),
      );
    }));
  }
}
