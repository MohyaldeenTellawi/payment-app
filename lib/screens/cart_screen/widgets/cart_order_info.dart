

import 'package:flutter/material.dart';

import '../../../core/utils/styles.dart';


class CartOrderInfo extends StatelessWidget {
  const CartOrderInfo({super.key, required this.text, required this.value});
  final String text;
  final String value;
  @override
  Widget build(BuildContext context) {
    return  Row(
        children: [
          Text(text,
          style: Styles.style18,
          ),
          const Spacer(),
            Text(value,
          style: Styles.style18,
          ),
        ],
      );
  }
}