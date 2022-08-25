import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/header_bar.dart';
import '../generated/l10n.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          GridView.count(
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisCount: 4,
            shrinkWrap: true,
            // Generate 100 widgets that display their index in the List.
            children: List.generate(12, (index) {
              return Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(),
                    // color: Colors.grey[300],
                  ),
                  child: Center(child: Text('${index + 1}')));
            }),
          ),
        ]),
      ),
    );
  }
}
