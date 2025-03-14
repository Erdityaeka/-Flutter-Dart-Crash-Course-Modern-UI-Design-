import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondCartScreen extends StatefulWidget {
  const SecondCartScreen({super.key});

  @override
  State<SecondCartScreen> createState() => _SecondCartScreenState();
}

class _SecondCartScreenState extends State<SecondCartScreen> {
  int SelectdetIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Image.asset(
        'assets/hotel.png',
        width: double.infinity,
      );
    }

    Widget title() {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Arrina La',
                style: GoogleFonts.poppins(
                    color: Color(0xff000000),
                    fontSize: 26,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'Bali, Dekat Bandung',
                style: GoogleFonts.poppins(
                  color: Color(0xff2F323A),
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: GoogleFonts.poppins(
                  color: Color(0xff000000),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              'Pantai Pandawa adalah salah satu para kawasan wisata di area Kuta selatan sana Kabupaten Dekat Bandung, Bali.',
              style: GoogleFonts.poppins(
                color: Color(0xff2F323A),
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 26,
            ),
            Text(
              'Booking Now',
              style: GoogleFonts.poppins(
                  color: Color(0xff000000),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      );
    }

    Widget Date(
      int index,
      String hari,
      String tanggal,
    ) {
      return GestureDetector(
        onTap: () {
          setState(() {
            SelectdetIndex = index;
          });
        },
        child: Container(
          width: 80,
          height: 100,
          decoration: BoxDecoration(
            color: SelectdetIndex == index ? Color(0xffF4F4F6) : Colors.white,
            borderRadius: BorderRadius.circular(22),
          ),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    hari,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: SelectdetIndex == index
                          ? Color(0xffBABAC8)
                          : Colors.black,
                    ),
                  ),
                  SizedBox(height: 4),
                  Center(
                    child: Text(
                      tanggal,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: SelectdetIndex == index
                            ? Color(0xffBABAC8)
                            : Color(0xffA8ACB6),
                      ),
                    ),
                  ),
                ],
              ),
              SelectdetIndex == index
                  ? Positioned(
                      right: 0,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(22),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    )
                  : SizedBox(),
            ],
          ),
        ),
      );
    }

    Widget bootomnavigation() {
      return BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '\$22,800',
                        style: GoogleFonts.poppins(
                          color: Color(0xff3F6DF6),
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '/night',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: SizedBox(
                width: 220,
                height: 60,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff3F6DF6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Continue',
                    style: GoogleFonts.poppins(
                      color: Color(0xFAFAFAff),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            label: '',
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffFAFBFF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title(),
              SizedBox(
                height: 26,
              ),
              body(),
              SizedBox(
                height: 12,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Date(0, 'Sun', '16 Mar'),
                      SizedBox(
                        width: 20,
                      ),
                      Date(1, 'Mon', '17 Mar'),
                      SizedBox(
                        width: 20,
                      ),
                      Date(2, 'Tue', '18 Mar'),
                      SizedBox(
                        width: 20,
                      ),
                      Date(3, 'Wed', '19 Mar'),
                      SizedBox(
                        width: 20,
                      ),
                      Date(4, 'Thu', '20 Mar'),
                      SizedBox(
                        width: 20,
                      ),
                      Date(5, 'Fri', '21 Mar'),
                      SizedBox(
                        width: 20,
                      ),
                      Date(6, 'Sat', '22 Mar'),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: bootomnavigation(),
    );
  }
}
