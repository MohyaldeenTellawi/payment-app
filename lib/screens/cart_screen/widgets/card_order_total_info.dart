


import 'package:flutter/material.dart';

import '../../../core/utils/styles.dart';



class CardOrderTotlaInfo extends StatelessWidget {
  const CardOrderTotlaInfo({super.key, required this.text, required this.value});
final String text, value;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Text(text,
          style: Styles.style24,
          ),
          const Spacer(),
            Text(value,
          style: Styles.style24,
          ),
        ],
      );
  }
}