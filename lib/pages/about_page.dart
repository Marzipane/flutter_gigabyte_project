import 'package:flutter/material.dart';
import 'package:flutter_giga_app/widgets/footer_widget.dart';
import 'package:flutter_giga_app/widgets/header_bar_widget.dart';

import '../common/set_page_tittle.dart';

class AboutPage extends StatefulWidget {
  static const routeName = '/about-page';
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
          AboutBodyWidget(),
          FooterWidget(),
          // Divider(thickness: 3, color: Colors.black.withOpacity(0.3)),
          // FooterWidget()
        ]),
      ),
    );
  }
}

class AboutBodyWidget extends StatelessWidget {
  const AboutBodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    setPageTitle('About', context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
      child: SizedBox(
        width: 500,
        child: Column(
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: Image.asset(
                'assets/profile_images/danil-avatar.jpg',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome to the 'About Page', here I would like to tell you a couple of facts about me, my name is Daniel, currently live in North Cyprus, I am 22 years old, I am deeply into programming, I do have some Flutter experience. It was nice meeting you.",
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
