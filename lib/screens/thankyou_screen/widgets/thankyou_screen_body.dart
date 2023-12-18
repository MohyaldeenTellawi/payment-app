import 'package:flutter/material.dart';

class ThankYouScreenBody extends StatelessWidget {
  const ThankYouScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const  EdgeInsets.all(30),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
        decoration: ShapeDecoration(
       color: const Color(0xFFD9D9D9),
         shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      ),
      ),
      Positioned(
        bottom:  MediaQuery.sizeOf(context).height * .2 + 20,
        left: 20 + 16,
        right: 20 + 16,
        child: Row(
          children: List.generate(45, (index) => Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 2),
              child: Container(
                height: 4,
                color: const Color(0xFFB8B8B8),
              ),
            ),
          ),
          ),
        ),
      ),
      Positioned(
        bottom: MediaQuery.sizeOf(context).height * .2,
        left: -20,
        child: const CircleAvatar(
          backgroundColor: Colors.white,
        ),
      ),
       Positioned(
        bottom: MediaQuery.sizeOf(context).height * .2,
        right: -20,
        child: const CircleAvatar(
          backgroundColor: Colors.white,
        ),
      ),
      const Positioned(
        left: 0,
        right: 0,
        top: -45,
        child:  CircleAvatar(
          radius: 45,
          backgroundColor:  Color(0xFFD9D9D9) ,
          child: CircleAvatar(
            radius: 35,
            backgroundColor: Color(0xFF34A853),
            child: Icon(Icons.check,
            size: 50,
            color: Colors.white,
            ),
          ),
        ),
      ),
        ],
      ),
    );
  }
}