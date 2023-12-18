


import 'package:flutter/material.dart';


import '../../../core/widgets/custom_app_bar.dart';
import '../widgets/cart_screen_body.dart';

class CartScreenView extends StatelessWidget {
  const CartScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        text: 'My Cart',
        onTap: () {},
      ),
      body: const CartScreenBody(),
    );
  }
}