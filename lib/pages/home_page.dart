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
          Container(
            height: 1000,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 8,
                ),
              ],
              image: const DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1483389127117-b6a2102724ae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80'),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                    Color.fromRGBO(0, 0, 0, 0.22), BlendMode.darken),
              ),
            ),
            child: Column(children: [
              Container(
                color: const Color.fromRGBO(255, 255, 255, 0.11),
                padding: const EdgeInsets.all(10),
                child: const HeaderBar(),
              ),
              const Expanded(flex: 2, child: Text('')),
              Expanded(
                  flex: 5,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    Text(
                                      'Tips and Ideas\nto Help You\nStart Freelancing',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 70),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    Text('12332'),
                                  ],
                                ),
                              )
                            ],
                          )),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            const Expanded(
                              flex: 9,
                              child: Text(''),
                            ),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: 300,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    RotatedBox(
                                      quarterTurns: 1,
                                      child: InkWell(
                                        onTap: () {},
                                        child: Text(
                                          S.of(context).home_body_follow,
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    const Divider(),
                                    IconButton(
                                      icon: const FaIcon(
                                        FontAwesomeIcons.facebook,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: const FaIcon(
                                        FontAwesomeIcons.twitter,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: const FaIcon(
                                        FontAwesomeIcons.instagram,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: const FaIcon(
                                        FontAwesomeIcons.linkedin,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              Row(
                children: [
                  const Expanded(
                    child: Text('dsd'),
                  ),
                  Expanded(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              color: Colors.grey[400],
                              child: const Icon(Icons.arrow_back,
                                  size: 60, color: Colors.white)),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                border: const Border(
                                    left: BorderSide(
                                        width: 2.0, color: Colors.black))),
                            child: const Icon(Icons.arrow_forward,
                                size: 60, color: Colors.white),
                          )
                        ]),
                  ),
                ],
              )
            ]),
          ),
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
