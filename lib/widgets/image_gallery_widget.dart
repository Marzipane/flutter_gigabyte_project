import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'change_page_button_widget.dart';
import 'header_bar_widget.dart';
import 'full_screen_slider_widget.dart';
import 'media_bar_widget.dart';
class ImageGalleryWidget extends StatelessWidget {
  ImageGalleryWidget({
    Key? key,

  }) : super(key: key);

  final CarouselController _controller = CarouselController();


  @override
  Widget build(BuildContext context) {
        final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Stack(children: [
    FullscreenSliderWidget(
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
      const HeaderBarWidget(),
      SizedBox(
        height: height * 0.3,
      ),
      MediaBarWidget(barHeight: height),
      const SizedBox(
        height: 10,
      ),
      Row(
        children: [
          const SizedBox(
            width: 30,
          ),
          ChangePageButtonWidget(
              controller: _controller, indexOfImage: 0),
          const SizedBox(
            width: 5,
          ),
          ChangePageButtonWidget(
              controller: _controller, indexOfImage: 1),
          const SizedBox(
            width: 5,
          ),
          ChangePageButtonWidget(
              controller: _controller, indexOfImage: 2),
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
          width: 50,
          height: 50,
          color: Colors.white.withOpacity(1),
          child: InkWell(
            child: Center(
              child:
                  FaIcon(FontAwesomeIcons.arrowLeft, color: Colors.black),
            ),
            onTap: () {

              _controller.previousPage();
            },
          ),
        ),
        SizedBox(
            // width: 50,
            height: 50,
            width: 3,
            child: VerticalDivider(
              color: Colors.grey,
              thickness: 3,
            )),
        Container(
          width: 50,
          height: 50,
          color: Colors.white.withOpacity(1),
          child: InkWell(
            child: Center(
                child: FaIcon(
              FontAwesomeIcons.arrowRight,
              color: Colors.black,
            )),
            onTap: () {
              
              _controller.nextPage();
            },
          ),
        ),
      ],
    ),
        ),
      ],
    );
  }
}