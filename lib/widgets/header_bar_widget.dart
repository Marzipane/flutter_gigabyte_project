import 'package:flutter/material.dart';
import 'package:flutter_giga_app/pages/about_page.dart';
import 'package:flutter_giga_app/pages/education_page.dart';
import 'package:flutter_giga_app/pages/projects_page.dart';
import 'package:flutter_giga_app/pages/skills_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../generated/l10n.dart';
import '../pages/contacts_page.dart';
import '../route_generator.dart';
import 'menu_widget.dart';

class HeaderBarWidget extends StatefulWidget {
  const HeaderBarWidget({super.key});

  @override
  State<HeaderBarWidget> createState() => _HeaderBarWidgetState();
}

class _HeaderBarWidgetState extends State<HeaderBarWidget> {
  bool isSearchTapped = false;
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final bool isShowSlider = MediaQuery.of(context).size.width <= 900;
    bool isTablet = MediaQuery.of(context).size.width <= 1150;

    return SizedBox(
      height: height * 0.1,
      width: width,
      child: !isSearchTapped
          ? buildNormalHeader(isTablet, isShowSlider, context, width)
          : buildSearchHeader(width),
    );
  }

  Padding buildSearchHeader(double width) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width <= 60 ? 30 : 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: width <= 620
                ? width * 0.7
                : width <= 1100
                    ? width * 0.8
                    : width * 0.65,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 40),
                  controller: searchController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Colors.purple.withOpacity(0.6)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 4, color: Colors.purple.withOpacity(0.6)),
                    ),
                    hintText: 'Search for ...',
                    hintStyle: TextStyle(color: Colors.white, fontSize: 40),
                    iconColor: Colors.grey,
                  ),
                )),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              setState(() {
                isSearchTapped = false;
              });
            },
            child: FaIcon(
              FontAwesomeIcons.xmark,
              color: Colors.red,
              size: width <= 310 ? 50 : 70,
            ),
          ),
        ],
      ),
    );
  }

  Container buildNormalHeader(
      bool isTablet, bool isShowSlider, BuildContext, width) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.4),
        ),
      ]),
      child: (Row(
        children: [
          Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/', (route) => false);
                },
                child: Text(
                  'Marzipane.',
                  style: TextStyle(
                      fontSize: width <= 310
                          ? 20
                          : isTablet
                              ? 30
                              : 45,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )),
          !isShowSlider
              ? Expanded(
                  flex: 3,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MyWidget(),
                        InkWell(
                          onTap: () => {
                            Navigator.pushNamedAndRemoveUntil(
                                context, '/', (route) => false)
                          },
                          child: Text(S.of(context).header_home,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamedAndRemoveUntil(context,
                                ContactsPage.routeName, (route) => false);
                          },
                          child: Text(S.of(context).header_contact,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ),
                        InkWell(
                          onTap: () => {
                            Navigator.pushNamedAndRemoveUntil(
                                context, AboutPage.routeName, (route) => false)
                          },
                          child: Text(S.of(context).header_about,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ]),
                )
              : SizedBox.shrink(),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isSearchTapped = true;
                    });
                  },
                  child: Icon(
                    Icons.search,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                isShowSlider
                    ? Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(HeroDialogRoute(
                                builder: (context) {
                                  return MobileMenuWidget();
                                },
                              ));
                            },
                            child: Icon(
                              Icons.menu,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    : SizedBox.shrink(),
              ],
            ),
          )
        ],
      )),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return PopupMenuButton<String>(
      position: PopupMenuPosition.under,
      padding: EdgeInsets.zero,
      onSelected: (String result) {
        switch (result) {
          case 'education':
            Navigator.pushNamedAndRemoveUntil(
                context, EducationPage.routeName, (route) => false);
            break;
          case 'skills':
            Navigator.pushNamedAndRemoveUntil(
                context, SkillsPage.routeName, (route) => false);
            break;
          case 'projects':
            Navigator.pushNamedAndRemoveUntil(context, ProjectsPage.routeName, (route) => false);
            break;

          default:
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          padding: EdgeInsets.only(left: 5),
          value: 'education',
          child: ListTile(
            title: Text('Education'),
            trailing: Icon(Icons.school),
          ),
        ),
        const PopupMenuItem<String>(
          padding: EdgeInsets.only(left: 5),
          value: 'skills',
          child: ListTile(
            title: Text('Skills'),
            trailing: Icon(Icons.explore),
          ),
        ),
        const PopupMenuItem<String>(
          padding: EdgeInsets.only(left: 5),
          value: 'projects',
          child: ListTile(
            title: Text('Projects'),
            trailing: FaIcon(FontAwesomeIcons.buildingColumns),
          ),
        ),
      ],
      // offset: Offset.fromDirection(1, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Categories',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 40,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
