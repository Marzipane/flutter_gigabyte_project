import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../utilities/image_data.dart';

class FullscreenSliderWidget extends StatefulWidget {
  const FullscreenSliderWidget({Key? key, this.controller}) : super(key: key);
  final CarouselController? controller;

  @override
  State<FullscreenSliderWidget> createState() => _FullscreenSliderWidgetState();
}

class _FullscreenSliderWidgetState extends State<FullscreenSliderWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          final double width = MediaQuery.of(context).size.width;
          return buildSlider(height, width);
        },
      ),
    );
  }

  CarouselSlider buildSlider(double height, double width) {
    return CarouselSlider(
        carouselController: widget.controller,
        options: CarouselOptions(
          height: height,
          viewportFraction: 1.0,
          // enlargeCenterPage: true,
          autoPlay: false,
        ),
        items:
            dataList.map((item) => buildImage(item, width, height)).toList());
  }

  Stack buildImage(Map<String, String> item, double width, double height) {
    return Stack(
      children: <Widget>[
        Image.asset(
          item['link']!,
          fit: BoxFit.cover,
          height: 3000,
          width: width,
        ),
        Container(
          margin: const EdgeInsets.only(left: 30),
          width: width <= 740 ? width * 0.8 : width * 0.5,
          child: Column(
            children: [
              SizedBox(
                height: height * 0.45,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        item['style']!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Posted by',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(
                            item['creator']!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    item['main']!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width <= 420 ? 50 : 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(200, 0, 0, 0),
                  Color.fromARGB(0, 0, 0, 0)
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  item['id']!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
