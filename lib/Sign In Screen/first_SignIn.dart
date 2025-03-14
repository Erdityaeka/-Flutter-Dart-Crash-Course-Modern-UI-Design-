import 'package:flutter/material.dart';

class SIGIN extends StatelessWidget {
  const SIGIN({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color(0xff181A20),
      body: SingleChildScrollView(

        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 40, top: 30, right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/koin.png', width: 50),
                const SizedBox(height: 70),
                const Text(
                  'Welcome back.\nLet’s make money.',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 150,
                ),
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      fillColor: const Color(0xff262A34),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(17),
                          borderSide: BorderSide.none),
                      hintText: 'Email',
                      hintStyle: const TextStyle(color: Color(0xff6F7075))),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: const Color(0xff262A34),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide.none),
                    hintText: 'Password',
                    hintStyle: const TextStyle(color: Color(0xff6F7075)),
                    suffixIcon: const Icon(
                      Icons.visibility,
                      color: Color(0xff6F7075),
                    ),
                  ),
                ),
                Container(
                  alignment: const Alignment(1, 0.5),
                  child: const Text(
                    'Forgot My Password',
                    style: TextStyle(color: Color(0xff6A6B70)),
                  ),
                ),
                const SizedBox(
                  height: 130,
                ),
                Center(
                  child: SizedBox(
                    width: 295,
                    height: 55,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xffFCAC15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17)),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                            color: Color(0xff6B4909),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 90),
                  child: Row(
                    children: [
                      Text(
                        'Don’t have account?',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
