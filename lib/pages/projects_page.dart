import 'package:flutter/material.dart';
import 'package:flutter_giga_app/widgets/footer_widget.dart';
import 'package:flutter_giga_app/widgets/header_bar_widget.dart';
import 'package:webviewx/webviewx.dart';
import 'dart:js' as js;

import '../widgets/projects_widget.dart';
// import 'webview_page.dart';

class ProjectsPage extends StatefulWidget {
  static const routeName = '/projects-page';
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
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
          ProjectsWidget(),
          FooterWidget(),
        ]),
      ),
    );
  }
}


