import 'package:flutter/material.dart';

import './pages/index_page.dart';

void main() {
  runApp(TestProject());
}

class TestProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: "小书亭",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.pink),
        home: IndexPage(),
      ),
    );
  }
}
