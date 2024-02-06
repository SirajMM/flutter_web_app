import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constants.dart';
import '../../widgets/common_container.dart';

class Container5 extends StatefulWidget {
  const Container5({Key? key}) : super(key: key);

  @override
  _Container5State createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => mobileContainer5(),
      desktop: (p0) => desktopContainer5(),
    );
  }

  //================ MOBILE ===============

  Widget mobileContainer5() {
    return commonContainerMobile(
        'USE ANYTIME',
        'Use anytime \nwhen you \nneed',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
        illustration3,
        false);
  }

  //============== DESKTOP =============

  Widget desktopContainer5() {
    return commonContainer(
        'USE ANYTIME',
        'Use anytime \nwhen you \nneed',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. \nEnim ipsum, amet quis ullamcorper eget ut.',
        illustration3,
        false);
  }
}
