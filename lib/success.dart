//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySuccessPage extends StatefulWidget {
  const MySuccessPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MySuccessPage> createState() => _MySuccessPageState();
}

class _MySuccessPageState extends State<MySuccessPage> {
  bool isChecked = false;
  bool isChecked2 = false;
  void checkBoxCallBack(bool? checkBoxState) {
    if (checkBoxState != null) {
      setState(() {
        isChecked = checkBoxState;
      });
    }
  }

  void checkBoxCallBack2(bool? checkBoxState) {
    if (checkBoxState != null) {
      setState(() {
        isChecked2 = checkBoxState;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 100.0,
        title: Align(
          alignment: Alignment.center,
          child: Text(
            'Success',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
        ),
        actions: const <Widget>[
          SizedBox(
            height: 20,
            width: 60,
            //child: Icon(Icons.more_horiz),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset(
                  'images/deliveryman.png',
                  height: 250,
                  width: 350,
                ),
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Wohoo!, your order is being',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'picked up by the courier',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 350,
                  height: 60,
                  child: Align(
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Track order',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        )),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.7),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Back to shopping',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationThickness: 2,
                    color: Color.fromARGB(255, 233, 189, 123),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
