import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1516410529446-2c777cb7366d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final Map<String, Map<String, String>> imageData = {
  'https://images.unsplash.com/photo-1516410529446-2c777cb7366d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80':
      {
    'creator': 'Jane Doe',
    'style': 'Health, Lifestyle',
    'main': '10 Reasons Why Being in Nature is Good For You'
  },
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80':
      {
    'creator': 'Juan Dela Cruz',
    'style': 'Work',
    'main': 'Minimalism: The Art of Keeping It Simple'
  },
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80':
      {
    'creator': 'Jonathan Doe',
    'style': 'styleText',
    'main': 'Tips and Ideas to Help You Start Freelancing'
  },
};

List<Map<String, String>> dataList = [
  {
    'id': '1',
    'link':
        'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'creator': 'Jonathan Doe',
    'style': 'Lifestyle, Design',
    'main': 'Tips and Ideas to Help You Start Freelancing'
  },
  {
    'id': '2',
    'link':
        'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'creator': 'Juan Dela Cruz',
    'style': 'Work',
    'main': 'Minimalism: The Art of Keeping It Simple'
  },
  {
    'id': '3',
    'link':
        'https://images.unsplash.com/photo-1516410529446-2c777cb7366d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
    'creator': 'Jane Doe',
    'style': 'Health, Lifestyle',
    'main': '10 Reasons Why Being in Nature is Good For You'
  },
];
// final List<Widget> imageSliders = imgList
//     .map((item) => Container(
//           child: Container(
//             margin: const EdgeInsets.all(5.0),
//             child: ClipRRect(
//                 borderRadius:
//                     const BorderRadius.all(const Radius.circular(5.0)),
//                 child: Stack(
//                   children: <Widget>[
//                     Image.network(
//                       item,
//                       fit: BoxFit.cover,
//                     ),
//                     Positioned(
//                       bottom: 0.0,
//                       left: 0.0,
//                       right: 0.0,
//                       child: Container(
//                         decoration: const BoxDecoration(
//                           gradient: const LinearGradient(
//                             colors: [
//                               Color.fromARGB(200, 0, 0, 0),
//                               Color.fromARGB(0, 0, 0, 0)
//                             ],
//                             begin: Alignment.bottomCenter,
//                             end: Alignment.topCenter,
//                           ),
//                         ),
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 10.0, horizontal: 20.0),
//                         child: Text(
//                           '${imgList.indexOf(item)} image',
//                           style: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 20.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 )),
//           ),
//         ))
//     .toList();

class FullscreenSlider extends StatefulWidget {
  const FullscreenSlider({Key? key, this.controller}) : super(key: key);
  final CarouselController? controller;

  @override
  State<FullscreenSlider> createState() => _FullscreenSliderState();
}

class _FullscreenSliderState extends State<FullscreenSlider> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height * 0.95;
          final double width = MediaQuery.of(context).size.width;
          return CarouselSlider(
              carouselController: widget.controller,
              options: CarouselOptions(
                height: height,
                viewportFraction: 1.0,
                // enlargeCenterPage: true,
                autoPlay: false,
              ),
              items: dataList
                  .map((item) => Stack(
                        children: <Widget>[
                          Image.network(
                            item['link']!,
                            fit: BoxFit.cover,
                            height: 3000,
                            width: width,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 30),
                            width: width <= 740 ? width * 0.8 : width * 0.5,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: height * 0.45,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          item['style']!,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        Row(
                                          children: [
                                            const Text(
                                              'Posted by',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 7,
                                            ),
                                            Text(
                                              item['creator']!,
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      item['main']!,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 60.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 0.0,
                            left: 0.0,
                            right: 0.0,
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(200, 0, 0, 0),
                                    Color.fromARGB(0, 0, 0, 0)
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0),
                              child: Row(
                                children: [
                                  Text(
                                    item['id']!,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ))
                  .toList());
        },
      ),
    );
  }
}


// class ManuallyControlledSlider extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _ManuallyControlledSliderState();
//   }
// }

// class _ManuallyControlledSliderState extends State<ManuallyControlledSlider> {
//   final CarouselController _controller = CarouselController();

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: <Widget>[
//           CarouselSlider(
//             items: imageSliders,
//             options: CarouselOptions(enlargeCenterPage: false, height: 1000),
//             carouselController: _controller,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Flexible(
//                 child: ElevatedButton(
//                   onPressed: () => _controller.previousPage(),
//                   child: Text('←'),
//                 ),
//               ),
//               Flexible(
//                 child: ElevatedButton(
//                   onPressed: () => _controller.nextPage(),
//                   child: Text('→'),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
