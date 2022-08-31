import 'package:flutter/material.dart';
import '../common/set_page_tittle.dart';
import '../utilities/post_data.dart';
import '../widgets/footer_widget.dart';
import '../widgets/image_gallery_widget.dart';
import '../widgets/posts_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    setPageTitle('Home', context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          ImageGalleryWidget(),
          Divider(thickness: 3, color: Colors.black.withOpacity(0.3)),
          PostsWidget(),
          FooterWidget()
        ]),
      ),
    );
  }
}
