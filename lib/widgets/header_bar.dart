import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
  bool isSearhTapped = false;
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final bool isShowSlider = MediaQuery.of(context).size.width <= 900;
    bool isTablet = MediaQuery.of(context).size.width <= 1150;

    return !isSearhTapped
        ? (Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Text(
                    'Marzipane.',
                    style: TextStyle(
                        fontSize: isTablet ? 18 : 45,
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
                          isSearhTapped = true;
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
          ))
        : Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                // color: Colors.black.withOpacity(0.3),
                // width: width,
                height: height * 0.1,
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
                        hintText: 'Search for ...',
                        hintStyle: TextStyle(color: Colors.white, fontSize: 30),
                        iconColor: Colors.grey,
                        helperText: '123',
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.delete,
                            color: Colors.red,
                            size: 40,
                          ),
                          onPressed: () {
                            searchController.clear();
                          },
                        ),
                      ),
                    )),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isSearhTapped = false;
                  });
                },
                child: FaIcon(
                  FontAwesomeIcons.xmark,
                  color: Colors.grey,
                  size: 50,
                ),
              ),
            ],
          );
  }
}
