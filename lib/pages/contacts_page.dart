import 'package:flutter/material.dart';
import 'package:flutter_giga_app/widgets/header_bar_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:js' as js;

class ContactsPage extends StatefulWidget {
  static const routeName = '/contacts-page';
  const ContactsPage({super.key});

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(color: Colors.grey, child: HeaderBarWidget()),
          ContactsBodyWidget()
        ]),
      ),
    );
  }
}

class ContactsBodyWidget extends StatelessWidget {
  const ContactsBodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Container(
      // height: height * 0.7,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Contact Marzipane at',
              style: TextStyle(
                  fontSize: width <= 400
                      ? 20
                      : width <= 460
                          ? 30
                          : width <= 520
                              ? 35
                              : width <= 640
                                  ? 40
                                  : 50)),
          SizedBox(
            height: 20,
          ),
          ContactButton(
            icon: FontAwesomeIcons.telegram,
            mediaURL: 'https://t.me/marzipane_flutter',
            mediaNickName: '@marzipane_flutter',
            iconColor: Color.fromRGBO(0, 136, 204, 1.0),
          ),
          SizedBox(
            height: 10,
          ),
          ContactButton(
            icon: FontAwesomeIcons.instagram,
            mediaNickName: '@danil_marzi',
            mediaURL: 'https://www.instagram.com/danil_marzi/',
            iconColor: Color.fromRGBO(253, 29, 29, 1.0),
          ),
          SizedBox(
            height: 10,
          ),
          ContactButton(
            icon: FontAwesomeIcons.facebook,
            mediaURL: 'https://www.facebook.com/themarzipane/',
            mediaNickName: '@themarzipane',
            iconColor: Color.fromRGBO(66, 103, 178, 1.0),
          ),
          SizedBox(
            height: 10,
          ),
          ContactButton(
            icon: FontAwesomeIcons.github,
            mediaURL: 'https://github.com/Marzipane',
            mediaNickName: '@Marzipane',
            iconColor: Color.fromRGBO(23, 21, 21, 1.0),
          ),
        ],
      ),
    );
  }
}

class ContactButton extends StatelessWidget {
  final IconData icon;

  final String mediaURL;
  final String mediaNickName;

  final Color iconColor;

  const ContactButton(
      {Key? key,
      required this.mediaURL,
      required this.icon,
      required this.iconColor,
      required this.mediaNickName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: () {
          js.context.callMethod('open', [mediaURL]);
        },
        child: ListTile(
          contentPadding: EdgeInsets.all(6),
          title: Text(mediaNickName),
          leading: FaIcon(icon, color: iconColor),
        ),
      ),
    );
  }
}



