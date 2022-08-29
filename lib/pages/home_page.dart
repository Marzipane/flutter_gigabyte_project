import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utilities/image_data.dart';
import '../utilities/post_data.dart';
import '../widgets/change_page_widhet.dart';
import '../widgets/footer.dart';
import '../widgets/header_bar.dart';
import '../widgets/image_carousel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/media_bar.dart';

int pageIndex = 0;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double barHeight = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final bool isShowSlider = MediaQuery.of(context).size.width <= 900; 
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          buildGallery(width, height, barHeight),
          Divider(thickness: 3, color: Colors.black.withOpacity(0.3)),
          buildPostsBlock(width),
          Footer(width: width, height: height)
        ]),
      ),
    );
  }

  Container buildPostsBlock(double width) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 60,
        // horizontal: 30,
      ),
      child: Column(
        children: [
          Wrap(
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
                          child: Text(
                            'Read more..',
                            style: TextStyle(color: Colors.blue, fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
          SizedBox(
            height: 100,
          ),
          Row(
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
          ),
        ],
      ),
    );
  }

  Stack buildGallery(double width, double height, double barHeight) {
    return Stack(
      children: [
        Stack(children: [
          FullscreenSlider(
            controller: _controller,
          ),
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
              ),
            ]),
          ),
        ]),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  // spreadRadius: 2,
                  // blurRadius: 20,
                ),
              ]),
              child:  const HeaderBar(),
            ),
            SizedBox(
              height: height * 0.3,
            ),
            MediaBar(barHeight: barHeight),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                ChangePageWidget(controller: _controller, indexOfImage: 0),
                const SizedBox(
                  width: 5,
                ),
                ChangePageWidget(controller: _controller, indexOfImage: 1),
                const SizedBox(
                  width: 5,
                ),
                ChangePageWidget(controller: _controller, indexOfImage: 2),
                // ...Iterable<int>.generate(dataList.length)
                //     .map((int pageIndex) => Flexible(
                //           child: InkWell(
                //             onTap: () => _controller.jumpToPage(pageIndex),
                //             child: Text(
                //               "${pageIndex + 1}",
                //               style: TextStyle(fontSize: 20),
                //             ),
                //           ),
                //         ))
              ],
            ),
          ],
        ),
        Positioned(
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.white.withOpacity(1),
                child: InkWell(
                  child: Center(
                    child:
                        FaIcon(FontAwesomeIcons.arrowLeft, color: Colors.black),
                  ),
                  onTap: () {
                    setState(() {
                      if (pageIndex <= 0) {
                        pageIndex = dataList.length;
                      }
                      pageIndex--;
                    });
                    _controller.previousPage();
                  },
                ),
              ),
              SizedBox(
                  // width: 50,
                  height: 50,
                  width: 3,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 3,
                  )),
              Container(
                width: 50,
                height: 50,
                color: Colors.white.withOpacity(1),
                child: InkWell(
                  child: Center(
                      child: FaIcon(
                    FontAwesomeIcons.arrowRight,
                    color: Colors.black,
                  )),
                  onTap: () {
                    setState(() {
                      if (pageIndex >= dataList.length - 1) {
                        pageIndex = 0;
                        pageIndex--;
                      }

                      pageIndex++;
                    });
                    _controller.nextPage();
                  },
                ),
              ),
            ],
          ),
        ),
      ],
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
