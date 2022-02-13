//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'payment.dart';

class MyCartPage extends StatefulWidget {
  const MyCartPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyCartPage> createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
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
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            'Cart',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
        actions: const <Widget>[
          SizedBox(
            height: 20,
            width: 60,
            child: Icon(Icons.more_horiz),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  height: 110,
                  width: 400,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        right: 0,
                        bottom: 10,
                        child: Container(
                          height: 35,
                          width: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 20,
                                  width: 20,
                                  child: Icon(
                                    Icons.remove,
                                    size: 15,
                                    color: Colors.black.withOpacity(0.8),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 20,
                                  width: 20,
                                  child: const Icon(
                                    Icons.add,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.02),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Checkbox(
                            value: isChecked,
                            onChanged: checkBoxCallBack,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 90,
                            width: 90,
                            child: Image.asset(
                              'images/burger10.png',
                              //fit: BoxFit.cover,
                              height: 70,
                              width: 70,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.orange.withOpacity(0.15),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: const [
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Beef burger',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 241, 208, 135),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Beef burger',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  '\$9,90    ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                child: Container(
                  height: 110,
                  width: 400,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        right: 0,
                        bottom: 10,
                        child: Container(
                          height: 35,
                          width: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 20,
                                  width: 20,
                                  child: Icon(
                                    Icons.remove,
                                    size: 15,
                                    color: Colors.black.withOpacity(0.8),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 20,
                                  width: 20,
                                  child: const Icon(
                                    Icons.add,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.02),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Checkbox(
                            value: isChecked2,
                            onChanged: checkBoxCallBack2,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 90,
                            width: 90,
                            child: Image.asset(
                              'images/burger20.png',
                              //fit: BoxFit.cover,
                              height: 70,
                              width: 70,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.orange.withOpacity(0.15),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: const [
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Cheese burger           ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 241, 208, 135),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Mini cheese burger',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  '\$5,00               ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 420,
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
                          'Sub total',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.3),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 208,
                        ),
                        const Text(
                          '\$24,90',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Shipping',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.3),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 220,
                        ),
                        const Text(
                          '\$3,00',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                            color: Colors.orange,
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
                        const Positioned(
                          top: 16,
                          left: 0,
                          child: Text(
                            "\$",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 12,
                            ),
                            const Text(
                              "27,90",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            Container(
                              width: 235,
                              height: 60,
                              child: Align(
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const MyPaymentPage(
                                                title: 'Payment'),
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
                                  ),
                                ),
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
