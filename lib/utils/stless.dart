
import 'package:e_commerceapp/utils/placescreen.dart';
import 'package:flutter/material.dart';



class eCommerceApp extends StatelessWidget {
  const eCommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: placeScreen(),
    );
  }
}