import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:js' as js;

class MediaBarWidget extends StatelessWidget {
  final double barHeight;
  MediaBarWidget({
    Key? key,
    required this.barHeight,
  }) : super(key: key);
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
                    MediaButton(
                      iconName: FontAwesomeIcons.facebookF,
                      mediaURL: 'https://www.facebook.com/themarzipane/',
                    ),
                    MediaButton(
                      iconName: FontAwesomeIcons.linkedin,
                      mediaURL:
                          'https://www.linkedin.com/in/danil-martsinkovskii-b86615245',
                    ),
                    MediaButton(
                      iconName: FontAwesomeIcons.instagram,
                      mediaURL: 'https://www.instagram.com/danil_marzi/',
                    ),
                    MediaButton(
                      iconName: FontAwesomeIcons.githubAlt,
                      mediaURL: 'https://github.com/Marzipane/',
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

class MediaButton extends StatefulWidget {
  MediaButton({
    Key? key,
    required this.mediaURL,
    required this.iconName,
  }) : super(key: key);

  final IconData iconName;
  final String mediaURL;
  @override
  State<MediaButton> createState() => _MediaButtonState();
}

class _MediaButtonState extends State<MediaButton> {
  double iconSize = 22;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        if (value) {
          setState(() {
            iconSize = 24;
          });
        } else {
          setState(() {
            iconSize = 22;
          });
        }
      },
      onTap: () {
        js.context.callMethod('open', [widget.mediaURL]);
      },
      child: FaIcon(widget.iconName, size: iconSize),
    );
  }
}
