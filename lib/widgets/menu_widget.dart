import 'package:flutter/material.dart';

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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            'GO TO',
                            style: TextStyle(
                                fontSize: 20,
                                letterSpacing: 3,
                                color: Colors.white54),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    
                    Divider(
                      color: Colors.grey,
                      thickness: 0.2,
                    ),
                    DropDownMenu(
                      title: 'Categories',
                      number: '02',
                      bodycard: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () => {
                              // Navigator.popAndPushNamed(context, DesignPage.routeName),
                            },
                            child: ListTile(
                              leading: Text('-',
                                  style: TextStyle(color: Colors.grey)),
                              trailing: SizedBox.shrink(),
                              title: Text('Design',
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => {
                              // Navigator.popAndPushNamed(context, ProjectsPage.routeName),
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
                      onTap: () => {
                        // Navigator.popAndPushNamed(context,AboutPage.routeName)
                      },
                      child: ListTile(
                        leading:
                            Text('03', style: TextStyle(color: Colors.grey)),
                        trailing: SizedBox.shrink(),
                        title: Text('About',
                            style: TextStyle(color: Colors.white)),
                      ),
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
  String title;
  String number;
  Column bodycard;

  DropDownMenu(
      {Key? key,
      required this.title,
      required this.number,
      required this.bodycard})
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
            child: widget.bodycard,
          ),
          isExpanded: isExpanded,
        ),
      ],
    );
  }
}
