import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MediaBar extends StatelessWidget {
  const MediaBar({
    Key? key,
    required this.barHeight,
  }) : super(key: key);

  final double barHeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: barHeight * 0.5,
                margin: const EdgeInsets.only(right: 20),
                // color: Colors.blue,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          'Follow',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height:40,
                        child: VerticalDivider(
                          color: Colors.white,
                          thickness: 1.5,
                          width: 20,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const FaIcon(FontAwesomeIcons.facebookF),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const FaIcon(FontAwesomeIcons.twitter),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const FaIcon(FontAwesomeIcons.instagram),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const FaIcon(FontAwesomeIcons.dribbble),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
