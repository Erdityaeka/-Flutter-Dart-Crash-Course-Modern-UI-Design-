import 'package:flutter/material.dart';

class siginscnd extends StatelessWidget {
  const siginscnd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 28, right: 28, top: 64),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/iconpaper.png',
                    height: 279,
                    width: 245,
                  ),
                ),
                const SizedBox(
                  height: 53,
                ),
                const Text(
                  'Email Addres',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      fillColor: const Color(0xffF3F3F3),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none),
                      hintText: 'Email'),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Password',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 0),
                TextFormField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      fillColor: const Color(0xffF3F3F3),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none),
                      hintText: 'Password'),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: SizedBox(
                    width: 320,
                    height: 55,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: const Color(0xff5468FF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60))),
                      onPressed: () {},
                      child: const Text(
                        'Log In',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: SizedBox(
                    
                    width: 320,
                    height: 55,
                    child: OutlinedButton(style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60))), onPressed: (){}, child: const Text('Create New Acount', style: TextStyle(color: Color(0xffCFCFCF)),)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
