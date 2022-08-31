import 'package:flutter/material.dart';
import 'package:flutter_giga_app/pages/contacts_page.dart';
import 'package:flutter_giga_app/pages/education_page.dart';
import 'package:flutter_giga_app/pages/skills_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../pages/about_page.dart';
import '../pages/projects_page.dart';

const String _heroAddTodo = 'add-todo-hero';

class MobileMenuWidget extends StatelessWidget {
  MobileMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Hero(
          tag: _heroAddTodo,
          createRectTween: (begin, end) {
            return RectTween(begin: begin, end: end);
          },
          child: Material(
            color: Colors.black,
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        Text(
                          'NAVIGATE TO:',
                          style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 3,
                              color: Colors.white54),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: FaIcon(
                            FontAwesomeIcons.xmark,
                            size: 35,
                            color: Colors.white54,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    DropDownMenu(
                      title: 'Categories',
                      number: '01',
                      bodyCard: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () => {
                              Navigator.popAndPushNamed(context, ProjectsPage.routeName),
                            },
                            child: ListTile(
                              leading: Text('-',
                                  style: TextStyle(color: Colors.grey)),
                              trailing: SizedBox.shrink(),
                              title: Text('Projects',
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => {
                              Navigator.popAndPushNamed(
                                  context, EducationPage.routeName),
                            },
                            child: ListTile(
                              leading: Text('-',
                                  style: TextStyle(color: Colors.grey)),
                              trailing: SizedBox.shrink(),
                              title: Text('Education',
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => {
                              Navigator.popAndPushNamed(
                                  context, SkillsPage.routeName),
                            },
                            child: ListTile(
                              leading: Text('-',
                                  style: TextStyle(color: Colors.grey)),
                              trailing: SizedBox.shrink(),
                              title: Text('Skills',
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => {
                              Navigator.popAndPushNamed(
                                  context, ProjectsPage.routeName),
                            },
                            child: ListTile(
                              leading: Text('-',
                                  style: TextStyle(color: Colors.grey)),
                              trailing: SizedBox.shrink(),
                              title: Text('Projects',
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.2,
                    ),
                    GestureDetector(
                      onTap: () => {Navigator.popAndPushNamed(context, '/')},
                      child: ListTile(
                        leading:
                            Text('02', style: TextStyle(color: Colors.grey)),
                        trailing: SizedBox.shrink(),
                        title:
                            Text('Home', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.2,
                    ),
                    GestureDetector(
                      onTap: () => {
                        Navigator.popAndPushNamed(
                            context, ContactsPage.routeName)
                      },
                      child: ListTile(
                        leading:
                            Text('03', style: TextStyle(color: Colors.grey)),
                        trailing: SizedBox.shrink(),
                        title: Text('Contacts',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.2,
                    ),
                    GestureDetector(
                      onTap: () => {
                        Navigator.popAndPushNamed(
                            context, AboutPage.routeName)
                      },
                      child: ListTile(
                        leading:
                            Text('04', style: TextStyle(color: Colors.grey)),
                        trailing: SizedBox.shrink(),
                        title: Text('About',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.2,
                    ),
                    
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DropDownMenu extends StatefulWidget {
  final String title;
  final String number;
  final Column bodyCard;

  DropDownMenu(
      {Key? key,
      required this.title,
      required this.number,
      required this.bodyCard})
      : super(key: key);

  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (int index, bool) {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      children: [
        ExpansionPanel(
          backgroundColor: Colors.black,
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              leading: Text(
                widget.number,
                style: TextStyle(color: Colors.grey),
              ),
              title: Text(
                widget.title,
                style: TextStyle(color: Colors.white),
              ),
            );
          },
          body: Padding(
            padding: EdgeInsets.only(left: 20),
            child: widget.bodyCard,
          ),
          isExpanded: isExpanded,
        ),
      ],
    );
  }
}
