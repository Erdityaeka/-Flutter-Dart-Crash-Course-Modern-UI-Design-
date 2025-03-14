import 'package:flutter/material.dart';

class SCR2 extends StatelessWidget {
  const SCR2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Health First.',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Exercise together with our best\ncommunity fit in the world',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(
              height: 60,
            ),
            Image.asset('assets/gallery.png'),
            const SizedBox(
              height: 110,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                width: 300,
                height: 55,
                color: const Color(0xffAFEA0D),
                child: TextButton(
                  onPressed: () {},
                  child: const Center( child: Text(
                    'Shape My Body',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ),
              ),
              )
            ),
            const SizedBox(height: 20,),
            const Center(
              child: Text('Terms & Conditions', style: TextStyle(fontSize: 18, color: Colors.grey))
            )
          ],
        ),
      )),
    );
  }
}
