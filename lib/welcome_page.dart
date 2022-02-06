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
  var _isVisible = false;
  void updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 795,
            width: 450,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: const Alignment(0.20, -0.83),
                  child: Image.asset(
                    'images/qcrown.png',
                    fit: BoxFit.cover,
                    height: 15,
                    width: 23,
                  ),
                ),
                Align(
                  alignment: const Alignment(-0.65, 0.52),
                  child: Image.asset(
                    'images/orange line.png',
                    fit: BoxFit.cover,
                    height: 10,
                    width: 245,
                  ),
                ),
                Align(
                  alignment: const Alignment(-0.55, 0.64),
                  child: Image.asset(
                    'images/orange line.png',
                    fit: BoxFit.cover,
                    height: 10,
                    width: 260,
                  ),
                ),
                const Align(
                  alignment: Alignment(0.00, -0.80),
                  child: Text(
                    'BURGER',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment(-0.05, -0.75),
                  child: Text(
                    'QUEEN',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment(-0.70, 0.52),
                  child: Text(
                    'Good Food',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 45,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment(-0.55, 0.65),
                  child: Text(
                    'Tasty Food *',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 45,
                      fontFamily: 'Poppins',
                      // decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                Align(
                  alignment: const Alignment(0.00, 0.85),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const MyHomePage(title: 'homepage'),
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
                ),
                Align(
                  alignment: const Alignment(0.00, 0.98),
                  child: TextButton(
                    onPressed: () {},
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white.withOpacity(0.7),
                        ),
                        children: const <TextSpan>[
                          TextSpan(
                              text: "Don't have an account yet? ",
                              style: TextStyle(
                                  //fontWeight: FontWeight.bold,
                                  )),
                          TextSpan(
                            text: 'Sign up',
                            style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/kerst-burger Portrait.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
