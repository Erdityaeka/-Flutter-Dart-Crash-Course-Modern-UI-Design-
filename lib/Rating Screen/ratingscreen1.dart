import 'package:buildangga_ui/widgets/theme.dart';
import 'package:flutter/material.dart';

class RatingScreen1 extends StatelessWidget {
  const RatingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181925),
      body: Padding(
        padding: const EdgeInsets.only(top: 80, right: 38, left: 38),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/pizza.png',
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Pizza Ballado',
              style: foodtexstyle,
            ),
            Text(
              '\$90,00',
              style: pricetexstyle,
            ),
            SizedBox(
              height: 90,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Was it delicious?',
                  style: questiontexstyle,
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/emoji1.png',
                      width: 60,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'assets/emoji2.png',
                      width: 60,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'assets/emoji3.png',
                      width: 60,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'assets/emoji4.png',
                      width: 60,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 90,),
            InkWell(
              onTap: (){},
              child: Container(
                width: 211,
                height: 55,
                decoration: BoxDecoration(
                  color: Color(0xff34D186),
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Align(child: Text('Rate Now', style: rateTextStyle,)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
