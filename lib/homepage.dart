import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'details.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _isVisible = false;
  void updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 80.0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 30, top: 40),
            child: SizedBox(
              height: 20,
              width: 60,
              child: Image(
                image: AssetImage('images/boy.png'),
                fit: BoxFit.none,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment(-0.80, 0.00),
                child: Text(
                  'Find and order',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    const Align(
                      alignment: Alignment(0.00, 0.00),
                      child: Text(
                        'burger for you',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Align(
                      child: Image.asset(
                        'images/burger.jpg',
                        fit: BoxFit.fill,
                        height: 50,
                        width: 40,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    fillColor: const Color.fromARGB(255, 243, 240, 240),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Find your burger',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                height: 50,
                width: 600,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 120,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Align(
                              child: Image.asset(
                                'images/meatonbone.png',
                                fit: BoxFit.fill,
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Align(
                            child: Text(
                              'Beef',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black.withOpacity(0.2),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    const SizedBox(
                      width: 22.5,
                    ),
                    Container(
                      height: 50,
                      width: 140,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Align(
                              child: Image.asset(
                                'images/cheese.png',
                                fit: BoxFit.fill,
                                height: 23,
                                width: 23,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Align(
                            child: Text(
                              'Cheese',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.3)),
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black.withOpacity(0.2),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    const SizedBox(
                      width: 22.5,
                    ),
                    Container(
                      height: 50,
                      width: 120,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Align(
                              child: Image.asset(
                                'images/shrimp.jpg',
                                fit: BoxFit.fill,
                                height: 23,
                                width: 23,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Align(
                            child: Text('Shrimp',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.3),
                                )),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black.withOpacity(0.2),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Align(
                alignment: Alignment(-0.90, 0.00),
                child: Text(
                  'Most popular',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                height: 280,
                width: 600,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 35),
                      child: Container(
                        width: 220,
                        height: 250,
                        child: Stack(
                          children: [
                            Positioned(
                              right: 0,
                              child: Image.asset(
                                'images/heart.png',
                              ),
                              height: 27,
                              width: 26,
                            ),
                            Positioned(
                              bottom: 32,
                              left: 77,
                              child: Image.asset('images/dollar.png',
                                  fit: BoxFit.fill, height: 10, width: 7),
                            ),
                            Column(
                              children: <Widget>[
                                Align(
                                  child: Image.asset(
                                    'images/burger1.jpg',
                                    fit: BoxFit.fill,
                                    height: 120,
                                    width: 160,
                                  ),
                                ),
                                const SizedBox(
                                  height: 0,
                                ),
                                Align(
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const MyDetailsPage(
                                                  title: 'details'),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      'Extra Beef Burger',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 55.0),
                                  child: Row(
                                    children: <Widget>[
                                      Image.asset('images/star.png',
                                          fit: BoxFit.cover,
                                          height: 15,
                                          width: 15),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        '4,8',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.3),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        '|',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.1),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        '5,3 km',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.3),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                const Align(
                                  child: Text(
                                    '9,90',
                                    style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
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
                              color: Colors.grey.withOpacity(0.08),
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: const Offset(15, 30),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 22.5,
                      height: 10,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 35),
                      child: Container(
                        width: 220,
                        height: 250,
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 32,
                              left: 77,
                              child: Image.asset('images/dollar.png',
                                  fit: BoxFit.fill, height: 10, width: 7),
                            ),
                            Column(
                              children: <Widget>[
                                Align(
                                  child: Image.asset(
                                    'images/burger2.jpg',
                                    fit: BoxFit.fill,
                                    height: 120,
                                    width: 160,
                                  ),
                                ),
                                Align(
                                  child: TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Smoked Beef Burger',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 55.0),
                                  child: Row(
                                    children: <Widget>[
                                      Image.asset('images/star.png',
                                          fit: BoxFit.cover,
                                          height: 15,
                                          width: 15),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        '4,5',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.3),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        '|',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.1),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        '4,0 km',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.3),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                const Align(
                                  child: Text(
                                    '9,90',
                                    style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black.withOpacity(0.5),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.heart,
              color: Colors.black.withOpacity(0.5),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.file_copy_outlined,
              color: Colors.black.withOpacity(0.5),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
