import 'package:flutter/material.dart';
import 'package:flutter_giga_app/widgets/footer_widget.dart';
import 'package:flutter_giga_app/widgets/header_bar_widget.dart';
import 'dart:js' as js;
import '../common/set_page_tittle.dart';
import '../widgets/projects_widget.dart';

class ProjectsPage extends StatelessWidget {
  static const routeName = '/projects-page';
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    setPageTitle('Projects', context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(color: Colors.grey, child: HeaderBarWidget()),
          ProjectsWidget(),
          FooterWidget(),
        ]),
      ),
    );
  }
}
