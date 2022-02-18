import 'package:flutter/material.dart';
import 'homepage.dart';
//import 'package:google_fonts/google_fonts.dart';

class MyWelcomePage extends StatefulWidget {
  const MyWelcomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyWelcomePage> createState() => _MyWelcomePageState();
}

class _MyWelcomePageState extends State<MyWelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(26),
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/kerst-burger Portrait.jpg'),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 40),
            const Center(
              child: Text(
                'BURGER\nQUEEN',
                style: TextStyle(
                  height: 0.9,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            const Spacer(),
            const Text(
              'Good Food \nTasty Food *',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.white,
                fontSize: 45,
                fontFamily: 'Poppins',
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyHomePage(title: 'homepage'),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(370, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                'Sign in',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.9),
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white.withOpacity(0.7),
                  ),
                  children: const <TextSpan>[
                    TextSpan(text: "Don't have an account yet? "),
                    TextSpan(
                      text: 'Sign up',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
