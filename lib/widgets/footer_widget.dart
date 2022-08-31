import 'package:flutter/material.dart';
import 'package:flutter_giga_app/pages/about_page.dart';
import 'package:flutter_giga_app/pages/contacts_page.dart';
import 'package:flutter_giga_app/pages/projects_page.dart';
import 'dart:js' as js;

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.grey.withOpacity(0.2),
      height: width <= 700
          ? height * 1.1
          : width <= 1250
              ? height * 1
              : height * 0.8,
      width: width,
      padding: EdgeInsets.only(
          left: width <= 1250 ? 40 : 20,
          right: width <= 1250 ? 40 : 20,
          top: width <= 500 ? 40 : 100,
          bottom: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        buildMainFooterBlock(width, height, context),
        SizedBox(
          height: width <= 350
              ? height * 0.03
              : width <= 1250
                  ? height * 0.1
                  : height * 0.2,
        ),
        buildSecondaryFooterBlock(width, height),
      ]),
    );
  }

  Wrap buildSecondaryFooterBlock(width, height) {
    return Wrap(
      children: [
        Text(
          '© Copyright Marzipane 2022',
          style: TextStyle(
            color: Colors.black.withOpacity(0.6),
          ),
        ),
        SizedBox(
          width: 20,
          height: 18,
          child: VerticalDivider(
            color: Colors.black.withOpacity(0.7),
          ),
        ),
        Text(
          'Design by ',
          style: TextStyle(
            color: Colors.black.withOpacity(0.6),
          ),
        ),
        Text(
          'Marzipane',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Wrap buildMainFooterBlock(width, height, context) {
    return Wrap(
      children: [
        SizedBox(
          width: width <= 700
              ? width * 0.8
              : width <= 1200
                  ? width * 0.4
                  : width * 0.2,
          child: Column(
            children: [
              Text('ABOUT THIS SITE'),
              Divider(
                color: Colors.black.withOpacity(0.7),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Text(
                      'This Web-Site was developed as an Internship Project, here you can basically see my Flutter Skills, and a bit information about me.'),
                ],
              )
            ],
          ),
        ),
        SizedBox(width: width <= 700 ? 0 : 50),
        Container(
          padding: EdgeInsets.only(top: width <= 700 ? height * 0.08 : 0),
          width: width <= 400
              ? width * 0.28
              : width <= 700
                  ? width * 0.35
                  : width * 0.15,
          child: Column(
            children: [
              Text('SITE LINKS'),
              Divider(
                color: Colors.black.withOpacity(0.7),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: Text('Home')),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, AboutPage.routeName);
                      },
                      child: Text('About me')),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, ContactsPage.routeName);
                      },
                      child: Text('Contacts')),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, ProjectsPage.routeName);
                      },
                      child: Text('Projects')),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
        SizedBox(width: 30),
        Container(
          padding: EdgeInsets.only(top: width <= 700 ? height * 0.08 : 0),
          width: width <= 400
              ? width * 0.28
              : width <= 700
                  ? width * 0.35
                  : width * 0.15,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('FOLLOW ME'),
              Divider(
                color: Colors.black.withOpacity(0.7),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: () {
                        js.context.callMethod(
                            'open', ['https://www.facebook.com/themarzipane/']);
                      },
                      child: Text('Facebook')),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                      onTap: () {
                        js.context.callMethod('open', [
                          'https://www.linkedin.com/in/danil-martsinkovskii-b86615245'
                        ]);
                      },
                      child: Text('LinkedIn')),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                      onTap: () {
                        js.context.callMethod(
                            'open', ['https://t.me/marzipane_flutter']);
                      },
                      child: Text('Telegram')),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                      onTap: () {
                        js.context.callMethod(
                            'open', ['https://www.instagram.com/danil_marzi/']);
                      },
                      child: Text('Instagram')),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                      onTap: () {
                        js.context.callMethod(
                            'open', ['https://github.com/Marzipane']);
                      },
                      child: Text('GitHub')),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
        SizedBox(
          width: width <= 1100 ? 0 : width * 0.15,
        ),
        Container(
          padding: EdgeInsets.only(top: width <= 1250 ? height * 0.08 : 0),
          width: width <= 700
              ? width * 0.8
              : width <= 1000
                  ? width * 0.35
                  : width * 0.25,
          child: Center(
            child: Column(
              children: [
                Text('SIGN UP FOR NEWSLETTER'),
                Divider(
                  color: Colors.black.withOpacity(0.7),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: width <= 1250
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
                  children: [
                    Text(
                        'Sign up to get updates on articles, interviews and events.'),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.black),
                        ),
                      ),
                    ),
                    Text(''),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(4)),
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Subscribe',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
