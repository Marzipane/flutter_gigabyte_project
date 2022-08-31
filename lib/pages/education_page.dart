import 'package:flutter/material.dart';
import 'package:flutter_giga_app/widgets/footer_widget.dart';
import 'package:flutter_giga_app/widgets/header_bar_widget.dart';

import '../common/set_page_tittle.dart';
import '../widgets/education_widget.dart';

class EducationPage extends StatelessWidget {
  static const routeName = '/education-page';
  const EducationPage({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    setPageTitle('Education', context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(color: Colors.grey, child: HeaderBarWidget()),
          EducationListWidget(),
          FooterWidget(),
        ]),
      ),
    );
  }
}
