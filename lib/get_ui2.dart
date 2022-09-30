import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'get_controller.dart';

class GetUi2 extends StatefulWidget {
  const GetUi2({Key? key, required this.getCount}) : super(key: key);
  final int getCount;
  @override
  State<GetUi2> createState() => _GetUi2State();
}

class _GetUi2State extends State<GetUi2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(),
      ),
    );
  }
}
