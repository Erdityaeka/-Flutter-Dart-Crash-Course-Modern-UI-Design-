import 'package:buildangga_ui/widgets/theme.dart';
import 'package:flutter/material.dart';


class secondempty extends StatelessWidget {
  const secondempty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1B33),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              'assets/illustrationn.png',
              width: 375,
              height: 454,
            ),
          ),
          const SizedBox(
            height: 69,
          ),
          Text(
            'Boost Profit!',
            style: titleTextStyle,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Our tools are helping business\nto grow much faster',
            style: deskripsiTextStyle,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 59,
          ),
          GestureDetector(
            child: Image.asset(
              'assets/btnn.png',
              width: 65,
              height: 65,
            ),
          )
        ],
      ),
    );
  }
}
