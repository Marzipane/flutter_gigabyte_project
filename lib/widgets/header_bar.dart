import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../generated/l10n.dart';
import '../route_generator.dart';
import 'menu_widget.dart';

class HeaderBar extends StatefulWidget {
  const HeaderBar({super.key});

  @override
  State<HeaderBar> createState() => _HeaderBarState();
}

class _HeaderBarState extends State<HeaderBar> {
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
          Container(
            // color: Colors.black.withOpacity(0.3),
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
      bool isTablet, bool isShowSlider, BuildContext , width) {
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
              child: Text(
                'Marzipane.',
                style: TextStyle(
                    fontSize: width <= 310 ? 20 :isTablet ? 30 : 45,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
          !isShowSlider
              ? Expanded(
                  flex: 3,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text(S.of(context).header_home,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(S.of(context).header_contact,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(S.of(context).header_projects,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ),
                        InkWell(
                          onTap: () {},
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
                    ? InkWell(
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
