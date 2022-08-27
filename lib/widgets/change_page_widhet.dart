import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_giga_app/pages/home_page.dart';

class ChangePageWidget extends StatefulWidget {
  const ChangePageWidget({
    Key? key,
    required CarouselController controller,
    required this.indexOfImage,
  })  : _controller = controller,
        super(key: key);
  final int indexOfImage;
  final CarouselController _controller;

  @override
  State<ChangePageWidget> createState() => _ChangePageWidgetState();
}

class _ChangePageWidgetState extends State<ChangePageWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget._controller.jumpToPage(widget.indexOfImage);
        pageIndex = widget.indexOfImage;
        print(pageIndex);
      },
      child: Container(
        width: 40,
        color: Colors.white.withOpacity(0.5),
        child: Center(
          child: Text(
            '${widget.indexOfImage + 1}',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
