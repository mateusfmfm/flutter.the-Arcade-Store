import 'package:flutter/material.dart';
import 'package:flutter_arcade_store/app/config/breakpoints.dart';
import 'package:flutter_arcade_store/app/presentation/modules/home/widgets/custom_search_field.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topImg =
        "https://images.squarespace-cdn.com/content/v1/56ff3c6d45bf2107c893c02b/1459581217261-V4EBADRBAHBO52NPEAQU/Pinball_2.jpg?format=2500w";
    return LayoutBuilder(
      builder: ((context, constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth >= 1200) {
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.4,
                  child: Image.network(
                    topImg,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: Card(
                    color: Colors.black,
                    elevation: 1,
                    child: Container(
                      width: 450,
                      child: Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: Column(
                          children: const [
                            Text(
                              "Buy your own arcade machine!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Here you'll find only restaured pinball machines and classic arcades!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 16),
                            CustomSearchField()
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }
        if (maxWidth >= mobileBreakpoint) {
          return SizedBox(
            height: 320,
            child: Stack(
              children: [
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Image.network(
                    topImg,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 40,
                  child: Card(
                    color: Colors.black,
                    elevation: 1,
                    child: Container(
                      width: 350,
                      child: Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: Column(
                          children: const [
                            Text(
                              "Buy your own arcade machine!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Here you'll find only restaured pinball machines and classic arcades!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 16),
                            CustomSearchField()
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }
        return Column(
          children: [
            AspectRatio(
              aspectRatio: 3.4,
              child: Image.network(
                topImg,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Buy your own arcade machine!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Here you'll find only restaured pinball machines and classic arcades!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  CustomSearchField()
                ],
              ),
            )
          ],
        );
      }),
    );
  }
}
