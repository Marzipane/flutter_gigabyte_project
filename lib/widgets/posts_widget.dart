import 'package:flutter/material.dart';
import '../utilities/post_data.dart';

class PostsWidget extends StatelessWidget {
  const PostsWidget({
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
          buildPosts(width),
          SizedBox(
            height: 100,
          ),
          buildPaginator(width),
        ],
      ),
    );
  }

  Row buildPaginator(double width) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: width <= 500
                  ? width * 0.9
                  : width <= 1000
                      ? width * 0.7
                      : width * 0.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Prev',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      color: Colors.black,
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  // NumberButton(
                  //   number: 1,
                  // ),
                  NumberButton(
                    number: 2,
                  ),
                  NumberButton(
                    number: 3,
                  ),
                  NumberButton(
                    number: 4,
                  ),
                  NumberButton(
                    number: 5,
                  ),
                  Text(
                    '...',
                    style: TextStyle(fontSize: 24),
                  ),
                  NumberButton(
                    number: 8,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Next',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
  }

  Wrap buildPosts(double width) {
    return Wrap(
          spacing: 10,
          runSpacing: 40,
          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.start,
          children: postDataList
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
                        child: Image.asset(
                          post['link']!,
                          // height: height * 0.,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Item ${post['title']}',
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
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(width: 3),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        post['style']!,
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Item ${post['description']}',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {},
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

class NumberButton extends StatelessWidget {
  const NumberButton({Key? key, required this.number}) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(
        '$number',
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
        ),
      ),
    );
  }
}