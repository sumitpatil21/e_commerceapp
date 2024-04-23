import 'dart:async';

import 'package:e_commerceapp/utils/HomePage/Home_Page.dart';
import 'package:flutter/material.dart';

class placeScreen extends StatefulWidget {
  const placeScreen({super.key});

  @override
  State<placeScreen> createState() => _placeScreenState();
}

class _placeScreenState extends State<placeScreen> {
@override
  void initState() {
    // TODO: implement initState

    Timer(Duration(seconds: 5),() {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage(),));
    },);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('Assest/Images/placeScreenbg.jpg'),
            fit: BoxFit.cover,
          )),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black26,
                  Colors.black,
                ],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'TENT',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      letterSpacing: 5,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "FOOD",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 40,
                      letterSpacing: 5,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
