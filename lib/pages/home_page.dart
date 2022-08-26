import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/header_bar.dart';
import '../widgets/image_carousel.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../widgets/media_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CarouselController _controller = CarouselController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 0.95;
    final double barHeight = MediaQuery.of(context).size.height * 0.95;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(children: [
            Stack(children: [
              FullscreenSlider(
                controller: _controller,
              ),
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                  ),
                ]),
              ),
            ]),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      // spreadRadius: 2,
                      // blurRadius: 20,
                    ),
                  ]),
                  child: const HeaderBar(),
                ),
                SizedBox(
                  height: height * 0.3,
                ),
                MediaBar(barHeight: barHeight),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    ...Iterable<int>.generate(dataList.length)
                        .map((int pageIndex) => Flexible(
                              child: InkWell(
                                onTap: () => _controller.jumpToPage(pageIndex),
                                child: Text(
                                  "${pageIndex + 1}",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ))
                  ],
                ),
              ],
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.red,
                    child: ElevatedButton(
                      child: Text(''),
                      onPressed: () {
                        _controller.previousPage();
                      },
                    ),
                  ),
                  Container(
                    color: Colors.red,
                    child: ElevatedButton(
                      child: Text(''),
                      onPressed: () {
                        _controller.nextPage();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ]),
          GridView.count(
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisCount: 4,
            shrinkWrap: true,
            // Generate 100 widgets that display their index in the List.
            children: List.generate(12, (index) {
              return Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(),
                    // color: Colors.grey[300],
                  ),
                  child: Center(child: Text('${index + 1}')));
            }),
          ),
        ]),
      ),
    );
  }
}
