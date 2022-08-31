import 'package:flutter/material.dart';
import '../utilities/post_data.dart';
import 'dart:js' as js;

class ProjectsWidget extends StatelessWidget {
  ProjectsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 60,
        // horizontal: 30,
      ),
      child: Column(
        children: [
          buildProjectPosts(width),
        ],
      ),
    );
  }

  Wrap buildProjectPosts(double width) {
    return Wrap(
      spacing: 10,
      runSpacing: 40,
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.start,
      children: projectsDataList
          .map(
            (post) => Container(
              width: width <= 750
                  ? width * 0.8
                  : width <= 1000
                      ? width * 0.4
                      : width <= 1250
                          ? width * 0.3
                          : width <= 1450
                              ? width * 0.23
                              : width * 0.23,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  right: BorderSide(
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  left: BorderSide(
                    color: Colors.grey.withOpacity(0.3),
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Center(
                      child: Image.asset(
                        post['link']!,
                        height: 200,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    '${post['title']}',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 27),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        'By:',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(width: 3),
                      Text(
                        post['creator']!,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 3),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    post['style']!,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontStyle: FontStyle.italic,
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    '${post['description']}',
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      js.context.callMethod('open', [
                        'https://cv-it.ru/danil_martsinkovskii/responsibilities/?lang=en'
                      ]);
                    },
                    child: Column(
                      children: [
                        Text(
                          'Read more..',
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
