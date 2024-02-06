import 'package:flutter/material.dart';
import 'package:flutter_web_app/pages/containers/container1.dart';
import 'package:flutter_web_app/widgets/navbar.dart';

import '../utils/constants.dart';
import 'containers/container2.dart';
import 'containers/container3.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.sizeOf(context).width;
    h = MediaQuery.sizeOf(context).height;
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(),
            Container1(),
            Container2(),
            Container3(),
          ],
        ),
      ),
    );
  }
}
