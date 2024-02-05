import 'package:flutter/material.dart';
import 'package:flutter_web_app/utils/colors.dart';
import 'package:flutter_web_app/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../utils/styles.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => mobileNavBar(),
      desktop: (context) => desktopNavBar(),
    );
  }

  Container mobileNavBar() => Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.menu),
            navLogo(),
          ],
        ),
      );

  Container desktopNavBar() => Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            navLogo(),
            Row(
              children: [
                navButton('Features'),
                navButton('About us'),
                navButton('Pricing'),
                navButton('Feedback'),
              ],
            ),
            ElevatedButton(
              style: borderedButtonStyle,
              onPressed: () {},
              child: Text(
                'Request a Demo',
                style: TextStyle(
                  color: AppColors.primary,
                ),
              ),
            )
          ],
        ),
      );

  Container navLogo() => Container(
        width: 110,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(logo))),
      );

  Padding navButton(String text) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
      );
}
