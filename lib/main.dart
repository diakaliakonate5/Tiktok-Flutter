// ignore_for_file: no_logic_in_create_state, unnecessary_this
import 'package:flutter/material.dart';

import 'MyStatefulWidget.dart';

void main() {
  runApp(const Tiktok());
}

class Tiktok extends StatelessWidget {
  const Tiktok({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}
