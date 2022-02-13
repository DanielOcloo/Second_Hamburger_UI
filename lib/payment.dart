//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'success.dart';

class MyPaymentPage extends StatefulWidget {
  const MyPaymentPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyPaymentPage> createState() => _MyPaymentPageState();
}

class _MyPaymentPageState extends State<MyPaymentPage> {
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
            'Payment',
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
                padding: const EdgeInsets.only(left: 30, right: 30, top: 5),
                child: Row(
                  children: [
                    Text(
                      'Address',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                    const SizedBox(width: 228),
                    const Text(
                      'Change',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 233, 189, 123),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  height: 110,
                  width: 400,
                  child: Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 90,
                        width: 90,
                        child: Image.asset(
                          'images/mapicon.png',
                          fit: BoxFit.fill,
                          height: 100,
                          width: 90,
                        ),
                        decoration: BoxDecoration(
                          //color: Colors.orange.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'My home                         ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              'JI H Ali 37, Surabaya, East Java,',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black.withOpacity(0.2),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              '12410 +62 8020 000 2222       ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black.withOpacity(0.2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Payment method',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: SizedBox(
                  height: 90,
                  width: 600,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 35),
                        child: Container(
                          width: 110,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Image.asset(
                                  'images/master.png',
                                  fit: BoxFit.fill,
                                  height: 25,
                                  width: 40,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 35),
                        child: Container(
                          width: 110,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Image.asset(
                                  'images/paypal.png',
                                  fit: BoxFit.fill,
                                  height: 25,
                                  width: 25,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 35),
                        child: Container(
                          width: 110,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Image.asset(
                                  'images/venmo.png',
                                  fit: BoxFit.fill,
                                  height: 15,
                                  width: 60,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 35),
                        child: Container(
                          width: 110,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Image.asset(
                                  'images/visa.png',
                                  fit: BoxFit.fill,
                                  height: 20,
                                  width: 50,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 330,
        width: 500,
        child: Stack(
          children: [
            Container(
              width: 500,
              child: Column(
                children: <Widget>[
                  Divider(
                    thickness: 3,
                    indent: 190,
                    endIndent: 190,
                    color: Colors.black.withOpacity(0.3),
                    height: 30,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Container(
                      height: 60,
                      width: 400,
                      child: Row(
                        children: const <Widget>[
                          SizedBox(width: 60),
                          Icon(
                            Icons.circle_outlined,
                            size: 30,
                            color: Color.fromARGB(255, 233, 189, 123),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Enter your discount code',
                            style: TextStyle(
                              color: Color.fromARGB(255, 233, 189, 123),
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 240, 187, 108)
                            .withOpacity(0.1),
                        border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 233, 195, 137),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Discount',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.3),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 250,
                        ),
                        const Text(
                          '\$-',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          '- - - - - - - - - - - - - - - - - - - - - - - - - - - -',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.3),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Total',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.3),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 240,
                        ),
                        const Text(
                          '\$27,90',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color.fromARGB(255, 233, 189, 123),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: 350,
                          height: 60,
                          child: Align(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const MySuccessPage(title: 'Success'),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Pay now',
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
                      ],
                    ),
                  ),
                ],
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                /* border: Border(
                  top: BorderSide(
                    width: 1,
                  ),
                ),*/
              ),
            ),
          ],
        ),
      ),
    );
  }
}
