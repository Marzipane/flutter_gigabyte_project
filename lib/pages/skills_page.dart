import 'package:flutter/material.dart';
import 'package:flutter_giga_app/widgets/footer_widget.dart';
import 'package:flutter_giga_app/widgets/header_bar_widget.dart';

import '../common/set_page_tittle.dart';
import '../widgets/education_widget.dart';
import '../widgets/skills_widget.dart';

class SkillsPage extends StatefulWidget {
  static const routeName = '/skills-page';
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    setPageTitle('Skills', context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(color: Colors.grey, child: HeaderBarWidget()),
          SkillsListWidget(),
          FooterWidget(),
          // Divider(thickness: 3, color: Colors.black.withOpacity(0.3)),
          // FooterWidget()
        ]),
      ),
    );
  }
}
