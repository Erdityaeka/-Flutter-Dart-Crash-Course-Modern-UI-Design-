import 'package:buildangga_ui/widgets/theme.dart';
import 'package:flutter/material.dart';

class RatingScreen2 extends StatelessWidget {
  const RatingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 80, right: 28, left: 28),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/office.png',
                width: 294.75,
                height: 210,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Enjoy You Meal',
              style: firsttextStyle,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Please rate our experience',
              style: subtextStyle,
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.star,
                  size: 50,
                  color: Color(0xffFFC648),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.star,
                  size: 50,
                  color: Color(0xffFFC648),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.star,
                  size: 50,
                  color: Color(0xffFFC648),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.star,
                  size: 50,
                  color: Color(0xffF8F8F8),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.star,
                  size: 50,
                  color: Color(0xffF8F8F8),
                ),
              ],
            ),
            SizedBox(height: 36),
            Container(
              width: double.infinity,
              height: 130,
              decoration: BoxDecoration(
                color: Color(0xffF8F8F8),
                borderRadius: BorderRadius.circular(17),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Your message',
                  hintStyle: mesangetextStyle,
                  
                  )
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(
                color: Color(0xff4074E6),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Align(
                  child: Text(
                'Submit Review',
                style: rateTextStyle,
              )),
            )
          ],
        ),
      ),
    );
  }
}
