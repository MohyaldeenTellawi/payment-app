





import 'package:chekout_app/core/utils/styles.dart';
import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text});
 final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
  height: 73,
  decoration: ShapeDecoration(
    color: const Color(0xFF34A853),
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(15),
),
),
child: Center(child: Text(text,
style: Styles.style22,
)),
);
  }
}