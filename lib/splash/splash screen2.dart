import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/login.png'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 75, left: 120),
            child: Row(
              children: [
                Image.asset('assets/home.png', width: 50,),
                SizedBox(width: 10,),
                Text('HouseQu',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),)
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
