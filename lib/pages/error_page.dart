import 'package:flutter/material.dart';

import '../common/set_page_tittle.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    setPageTitle('Error', context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('error, wrong path'),
      ),
    );
  }
}
