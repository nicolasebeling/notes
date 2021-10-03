import 'package:flutter/material.dart';

import 'homepage.dart';

void main() => runApp(const Notes());

class Notes extends StatelessWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Notes',
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
