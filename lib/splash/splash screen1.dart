import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class splash extends StatelessWidget {
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff13131E),
      body: Padding(
        padding: const EdgeInsets.only(top: 230, left: 118, right: 118),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/sword.png',
                width: 140,
              ),
            ),
            SizedBox(height: 170),
            Text(
              'Venture',
              style:
                  GoogleFonts.dmSerifDisplay(color: Colors.white, fontSize: 32),
            ),
          ],
        ),
      ),
    );
  }
}
