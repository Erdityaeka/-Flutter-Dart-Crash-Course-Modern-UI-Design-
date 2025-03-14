import 'package:flutter/material.dart';

class SCREN extends StatelessWidget {
  const SCREN({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/cover.png',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 600,left: 100,right: 57),
            child: Text(
              'Maxime Revenue',style: TextStyle(fontSize: 31, color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 650, left: 80,right: 40),
            child: Text('Gain more profit from cryptocurrency \n without any risk involved',style: TextStyle(fontSize: 16, color: Colors.white),textAlign: TextAlign.center,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 800,left: 170,right: 57),
            child: Image.asset('assets/btn.png', width: 80,),
          )
        ],
      ),
    );
  }
}
