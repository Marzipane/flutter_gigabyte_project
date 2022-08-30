import 'package:flutter/material.dart';
import '../widgets/footer.dart';
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
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          ImageGalleryWidget(),
          Divider(thickness: 3, color: Colors.black.withOpacity(0.3)),
          PostsWidget(),
          Footer()
        ]),
      ),
    );
  }
}






