import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

class ChangePageButtonWidget extends StatefulWidget {
  const ChangePageButtonWidget({
    Key? key,
    required CarouselController controller,
    required this.indexOfImage,
  })  : _controller = controller,
        super(key: key);
  final int indexOfImage;
  final CarouselController _controller;

  @override
  State<ChangePageButtonWidget> createState() => _ChangePageButtonWidgetState();
}

class _ChangePageButtonWidgetState extends State<ChangePageButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget._controller.jumpToPage(widget.indexOfImage);
      },
      child: Container(
        width: 40,
        color: Colors.white.withOpacity(0.3),
        child: Center(
          child: Text(
            '${widget.indexOfImage + 1}',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
