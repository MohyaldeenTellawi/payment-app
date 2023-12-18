import 'package:chekout_app/screens/cart_screen/view/cart_screen_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CheckOut-App',
      theme: ThemeData(useMaterial3: true),
    home: const CartScreenView(),
    );
  }
}

           