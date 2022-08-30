import 'package:flutter/material.dart';
import 'package:flutter_giga_app/widgets/header_bar_widget.dart';
import 'dart:js' as js;

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
          ProjectsBodyWidget()
        ]),
      ),
    );
  }
}

class ProjectsBodyWidget extends StatelessWidget {
  const ProjectsBodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
      child: Column(
        children: [
          Text(
            'You can see my projects by going through the link down below',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              js.context.callMethod('open', [
                'https://cv-it.ru/danil_martsinkovskii/responsibilities/?lang=en'
              ]);
            },
            child: Text(
              'Projects',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
