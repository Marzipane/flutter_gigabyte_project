import 'package:flutter/material.dart';
import 'package:flutter_giga_app/widgets/footer_widget.dart';
import 'package:flutter_giga_app/widgets/header_bar_widget.dart';

import '../common/set_page_tittle.dart';
import '../widgets/education_widget.dart';
import '../widgets/skills_widget.dart';

class SkillsPage extends StatelessWidget {
  static const routeName = '/skills-page';
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    setPageTitle('Skills', context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(color: Colors.grey, child: HeaderBarWidget()),
          SkillsListWidget(),
          FooterWidget(),
        ]),
      ),
    );
  }
}
