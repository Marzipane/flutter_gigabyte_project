import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../../generated/l10n.dart';
import '../route_generator.dart';
import 'menu_widget.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isShowSlider = MediaQuery.of(context).size.width <= 900;
    bool isTablet = MediaQuery.of(context).size.width <= 1150;
    return (Row(
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
                onTap: () {},
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
    ));
  }
}
