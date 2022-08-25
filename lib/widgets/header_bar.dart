import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../../generated/l10n.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({super.key});

  @override
  Widget build(BuildContext context) {
    return (Row(
      children: [
        const Expanded(
            flex: 3,
            child: Text(
              'Marzipane.',
              style: TextStyle(
                  fontSize: 45,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
        Expanded(
          flex: 3,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
        ),
        const Expanded(
          flex: 5,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Icon(
              Icons.search,
              size: 50,
              color: Colors.white,
            ),
          ),
        ),
      ],
    ));
  }
}
