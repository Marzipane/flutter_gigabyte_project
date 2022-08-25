import 'package:flutter/material.dart';

Widget bodyStack() {
  return Container(
    color: Colors.white,
    height: 88,
    child: (Column(
      children: [
        Expanded(
            flex: 4,
            child: Container(
              margin: const EdgeInsets.only(left: 150),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 280,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Lifestyle, design',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Posted by Jonathan Doe',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Tips and Ideas to\nHelp you Start\nFreelancing',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 70,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 250,
                // color: Colors.blue,
                margin: const EdgeInsets.only(right: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    RotatedBox(
                      quarterTurns: 1,
                      child: Text(
                        'Follow',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    VerticalDivider(color: Colors.amber),
                    Icon(Icons.tv, color: Colors.white),
                    Icon(Icons.phone, color: Colors.white),
                    Icon(Icons.g_translate_sharp, color: Colors.white),
                    Icon(Icons.g_translate_sharp, color: Colors.white),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    )),
  );
}
