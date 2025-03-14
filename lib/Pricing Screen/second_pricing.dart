import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondPricingScreen extends StatelessWidget {
  const SecondPricingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/paper.png',
              width: 164,
              height: 164,
            ),
            SizedBox(
              height: 26,
            ),
            Text(
              'Pro Features',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 26,
            ),
            Text(
              'Unlock the winner modules\nand get more insights',
              style: GoogleFonts.poppins(
                  color: Color(0xff7F7FAD),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    Widget option(
      String title,
    ) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 26,
                height: 26,
                decoration: BoxDecoration(
                    color: Color(0xffFE6C4D), shape: BoxShape.circle),
                child: Align(
                    child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 20,
                )),
              ),
              SizedBox(
                width: 12,
              ),
              Text(title,
                  style:
                      GoogleFonts.poppins(color: Colors.white, fontSize: 16)),
            ],
          )
        ],
      );
    }

    Widget button() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: Color(0xffE57C73),
                  borderRadius: BorderRadius.circular(35),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffE57C73).withOpacity(0.5),
                      spreadRadius: 1,
                      offset: Offset(0, 8),
                      blurRadius: 15,
                    ),
                  ],
                ),
              ),
              Text(
                'Subscribe Now',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Positioned(
                right: 10, // Posisi ikon ke tepi kanan
                child: Container(
                  width: 41,
                  height: 41,
                  decoration: BoxDecoration(
                    color: Color(0xffFAACA5),
                    shape: BoxShape.circle,
                  ),
                  child:
                      Icon(Icons.arrow_forward, color: Colors.white, size: 24),
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Center(
            child: Text(
              'Contact Support',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 16,
                decoration: TextDecoration.underline,
                decorationColor:
                    Colors.white, 
               
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/layar.png',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 28.0, vertical: 78.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                SizedBox(
                  height: 50,
                ),
                option('Unlock Our Top Charts'),
                SizedBox(
                  height: 26,
                ),
                option('Save More than 1,000 Docs'),
                SizedBox(
                  height: 26,
                ),
                option('24/7 Customer Support'),
                SizedBox(
                  height: 26,
                ),
                option('Track Company’s Spending'),
                SizedBox(
                  height: 58,
                ),
                button(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
