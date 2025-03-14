import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FisrtPricingScreen extends StatefulWidget {
  const FisrtPricingScreen({super.key});

  @override
  State<FisrtPricingScreen> createState() => _FisrtPricingScreenState();
}

class _FisrtPricingScreenState extends State<FisrtPricingScreen> {
  int selectdindex = -1;
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/crown.png',
              width: 100,
              height: 100,
            ),
            SizedBox(
              height: 49,
            ),
            Text(
              'Which one you wish\nto Upgrade?',
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    }

    Widget option(
      int index,
      String image,
      String title,
      String description,
      String Subdescription,
    ) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectdindex = index;
          });
        },
        child: Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(
                color: selectdindex == index
                    ? Color(0xff6050E7)
                    : Color(0xffD9DEEA),
                width: 2),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  image,
                  width: 66,
                  height: 61,
                ),
                SizedBox(
                  width: 4,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          description,
                          style: GoogleFonts.poppins(
                              color: Color(0xffA3A8B8),
                              fontSize: 14,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          Subdescription,
                          style: GoogleFonts.poppins(
                              color: Color(0xff5343C2),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
                Spacer(),
                selectdindex == index
                    ? Icon(
                        Icons.check_circle,
                        color: Color(0xff6050E7),
                        size: 24,
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ),
      );
    }

    Widget bootomnavigation() {
      return BottomNavigationBar(
          backgroundColor: Color(0xff6050E7),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(
                  top: 24.0,
                  left: 1,
                ),
                child: Text(
                  'Upgrade Now',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 24.0, left: 120, right: 30),
                child: Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              label: '',
            ),
          ]);
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
          child: Column(
            children: [
              header(),
              SizedBox(
                height: 49,
              ),
              option(0, 'assets/pig.png', 'Money Security', 'support', '24/7'),
              SizedBox(
                height: 24,
              ),
              option(1, 'assets/iconpaper.png', 'Automation', 'we provide',
                  'Invoice'),
              SizedBox(
                height: 24,
              ),
              option(
                  2, 'assets/dolar.png', 'Balance Report', 'can up to', '10k'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bootomnavigation(),
    );
  }
}
