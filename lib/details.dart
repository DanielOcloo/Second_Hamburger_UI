import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cart.dart';

class MyDetailsPage extends StatefulWidget {
  const MyDetailsPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyDetailsPage> createState() => _MyDetailsPageState();
}

class _MyDetailsPageState extends State<MyDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 80.0,
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            'Details',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
        actions: const <Widget>[
          SizedBox(height: 20, width: 60, child: Icon(CupertinoIcons.heart))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                child: Image.asset(
                  'images/burger3.png',
                  fit: BoxFit.fill,
                  height: 200,
                  width: 260,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  height: 25,
                  width: 62,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'images/star.png',
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          '4,8',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 20,
                ),
                child: Container(
                  height: 80,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        right: 0,
                        top: 15,
                        child: Container(
                          height: 35,
                          width: 90,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.remove,
                                  color: Colors.black.withOpacity(0.3),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Icon(Icons.add),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Column(
                        children: const <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Extra beef burger',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'with cheese',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Ingredients',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: SizedBox(
                  height: 110,
                  width: 600,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 35),
                        child: Container(
                          width: 75,
                          child: Column(
                            children: <Widget>[
                              Align(
                                child: Image.asset(
                                  'images/cheese.png',
                                  fit: BoxFit.fill,
                                  height: 35,
                                  width: 35,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Align(
                                child: Text(
                                  'Cheese',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.3),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.08),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: const Offset(15, 30),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 35),
                        child: Container(
                          width: 75,
                          child: Column(
                            children: <Widget>[
                              Align(
                                child: Image.asset(
                                  'images/onion.png',
                                  fit: BoxFit.fill,
                                  height: 35,
                                  width: 35,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Align(
                                child: Text(
                                  'Onion',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.3),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.08),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: const Offset(15, 30),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 35),
                        child: Container(
                          width: 75,
                          child: Column(
                            children: <Widget>[
                              Align(
                                child: Image.asset(
                                  'images/meatonbone.png',
                                  fit: BoxFit.fill,
                                  height: 35,
                                  width: 35,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Align(
                                child: Text(
                                  'Meat',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.3),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.08),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: const Offset(15, 30),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 35),
                        child: Container(
                          width: 75,
                          child: Column(
                            children: <Widget>[
                              Align(
                                child: Image.asset(
                                  'images/salad.png',
                                  fit: BoxFit.fill,
                                  height: 35,
                                  width: 35,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Align(
                                child: Text(
                                  'Vegetable',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.3),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.08),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: const Offset(15, 30),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 35),
                        child: Container(
                          width: 75,
                          child: Column(
                            children: <Widget>[
                              Align(
                                child: Image.asset(
                                  'images/shrimp.jpg',
                                  fit: BoxFit.fill,
                                  height: 35,
                                  width: 35,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Align(
                                child: Text(
                                  'Shrimp',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.3),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.08),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: const Offset(15, 30),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Description',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'A cheese burger is a hamburger topped with chesse. The manufactured cheese is cut into small pieces that are placed on the toppings',
                  style: TextStyle(
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        width: 500,
        padding: const EdgeInsets.only(
          left: 30,
          right: 35,
          top: 25,
          bottom: 20,
        ),
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
                  "9,90",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  width: 45,
                ),
                Container(
                  width: 250,
                  child: Align(
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const MyCartPage(title: 'details'),
                            ),
                          );
                        },
                        child: Text(
                          'Add to cart',
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
          ],
        ),
      ),
    );
  }
}
