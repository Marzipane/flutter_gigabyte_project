import 'package:flutter/material.dart';
import 'package:flutter_giga_app/widgets/footer_widget.dart';
import 'package:flutter_giga_app/widgets/header_bar_widget.dart';

import '../common/set_page_tittle.dart';
import '../widgets/education_widget.dart';

class EducationPage extends StatefulWidget {
  static const routeName = '/education-page';
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    setPageTitle('Education', context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(color: Colors.grey, child: HeaderBarWidget()),
          EducationListWidget(),
          FooterWidget(),
          // Divider(thickness: 3, color: Colors.black.withOpacity(0.3)),
          // FooterWidget()
        ]),
      ),
    );
  }
}
