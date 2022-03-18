import 'package:flutter/material.dart';

import '../meduols/home.dart';

class home_layout extends StatelessWidget {
  const home_layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: home_for_screen(),
    );
  }
}
