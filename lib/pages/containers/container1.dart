import 'package:flutter/material.dart';
import 'package:flutter_web_app/utils/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constants.dart';

class Container1 extends StatelessWidget {
  const Container1({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => desktopContainer1(),
      mobile: (context) => mobileContainer1(),
    );
  }

  Widget mobileContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Column(
        children: [
          Container(
            height: w! / 1.2,
            width: w! / 1.2,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(illustration1), fit: BoxFit.contain)),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Track your \nExpenses to \nSave Money',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: w! / 10, fontWeight: FontWeight.bold, height: 1),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Helps you to organize your income and expenses',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 45,
            child: ElevatedButton.icon(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.primary)),
                onPressed: () {},
                icon: const Icon(Icons.arrow_drop_down),
                label: const Text('Try a Demo')),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '— Web, iOs and Android',
            style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
          )
        ],
      ),
    );
  }

  Padding desktopContainer1() => Padding(
        padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Track your\nExpenses to\nSave Money',
                    style: TextStyle(
                        fontSize: w! / 20,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Helps you to organize your income and expenses',
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 20),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.keyboard_arrow_down),
                        label: const Text('Try free Demo'),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(AppColors.primary),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        '— Web, iOs and Android',
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 20),
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: w! / 4,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(illustration1), fit: BoxFit.contain)),
              ),
            ),
          ],
        ),
      );
}
