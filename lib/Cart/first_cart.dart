import 'package:buildangga_ui/widgets/cart_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstCartScreen extends StatelessWidget {
  const FirstCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: appbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            cart(),
            SizedBox(
              height: 26,
            ),
            price(),
            SizedBox(
              height: 60,
            ),
            button(),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget appbar() {
    return AppBar(
      backgroundColor: Color(0xffFAFAFA),
      title: Center(
          child: Text(
        'My Shopping Cart',
        style: GoogleFonts.poppins(
            color: Color(0xff191919),
            fontSize: 22,
            fontWeight: FontWeight.w600),
      )),
      flexibleSpace: Container(
        color: Color(0xffFAFAFA),
      ),
    );
  }

  Widget cart() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        cartlist(
            image: 'assets/burger.png',
            name: 'Burger Malleta',
            place: 'McTheone',
            amount: '2',
            price: '\$90.00'),
        SizedBox(
          height: 26,
        ),
        cartlist(
            image: 'assets/teh.png',
            name: 'Mojito Orange',
            place: 'The Bar',
            amount: '5',
            price: '\$510.00'),
      ],
    );
  }

  Widget price() {
    return Container(
      width: double.infinity,
      height: 161,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Information',
              style: GoogleFonts.poppins(
                  color: Color(0xff191919),
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sub total',
                      style: GoogleFonts.poppins(
                        color: Color(0xff191919),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Delivery',
                      style: GoogleFonts.poppins(
                        color: Color(0xff191919),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Total',
                      style: GoogleFonts.poppins(
                        color: Color(0xff191919),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$600.00',
                      style: GoogleFonts.poppins(
                          color: Color(0xff191919),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '\$80.00',
                      style: GoogleFonts.poppins(
                          color: Color(0xff191919),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '\$680.00',
                      style: GoogleFonts.poppins(
                          color: Color(0xff191919),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget button() {
    return Center(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 60,
            child: TextButton(
              style: TextButton.styleFrom(
                  shadowColor: Color(0xffFFC532),
                  elevation: 8,
                  backgroundColor: Color(0xffFFC532),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(53),
                  ),
                  overlayColor: Colors.white),

              ///memberikan warna tekan

              onPressed: () {},
              child: Text(
                'Checkout Now',
                style: GoogleFonts.poppins(
                    color: Color(0xff191919),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Color(0xffD9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(53),
                  ),
                  overlayColor: Colors.white),

              ///memberikan warna tekan

              onPressed: () {},
              child: Text(
                'Save to Wishlist',
                style: GoogleFonts.poppins(
                    color: Color(0xffFFFFFF),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
