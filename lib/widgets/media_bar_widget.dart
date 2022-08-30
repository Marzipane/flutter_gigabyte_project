import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:js' as js;

class MediaBarWidget extends StatelessWidget {
  const MediaBarWidget({
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
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                      child: VerticalDivider(
                        color: Colors.white,
                        thickness: 1.5,
                        width: 20,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        js.context.callMethod(
                            'open', ['https://www.facebook.com/themarzipane/']);
                      },
                      child: const FaIcon(FontAwesomeIcons.facebookF),
                    ),
                    InkWell(
                      onTap: () {
                        js.context.callMethod('open', [
                          'https://www.linkedin.com/in/danil-martsinkovskii-b86615245'
                        ]);
                      },
                      child: const FaIcon(FontAwesomeIcons.linkedin),
                    ),
                    InkWell(
                      onTap: () {
                        js.context.callMethod(
                            'open', ['https://www.instagram.com/danil_marzi/']);
                      },
                      child: const FaIcon(FontAwesomeIcons.instagram),
                    ),
                    InkWell(
                      onTap: () {
                        js.context.callMethod(
                            'open', ['https://github.com/Marzipane']);
                      },
                      child: const FaIcon(
                        FontAwesomeIcons.github,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
