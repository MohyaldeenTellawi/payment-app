


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class CustomPaymentMethod extends StatelessWidget {
  const CustomPaymentMethod({super.key,this.isActive = false,required this.image,required this.onTap});
  final bool isActive;
  final String image;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
      height: MediaQuery.of(context).size.height * .075,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              side:  BorderSide(width: 1.50, color: isActive? const Color(0xFF34A853):Colors.white,
              ),
              borderRadius: BorderRadius.circular(15),
          ),
          shadows:  [
              BoxShadow(
                  color: isActive? const Color(0xFF34A853):Colors.grey,
                  blurRadius: 4,
                  offset: const Offset(0, 0),
                  spreadRadius: 0,
              )
          ],
      ),
      child: Container(
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              side:  BorderSide(width: 1.50, color: isActive? const Color(0xFF34A853):Colors.grey,
              
              ),
              borderRadius: BorderRadius.circular(15),
          ),
          shadows: const [
              BoxShadow(
                  color: Colors.white,
                  blurRadius: 4,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
              )
          ],
      ),
      child: SvgPicture.asset(image,
      fit: BoxFit.scaleDown,
      ),
      ),
      ),
    );
  }
}