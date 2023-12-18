


 import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/styles.dart';

AppBar buildAppBar({required String text,required void Function() onTap}) {
    return AppBar(
       leading: InkWell(
        overlayColor: const MaterialStatePropertyAll(Colors.transparent),
        onTap: onTap,
         child: Center(
          child: SvgPicture.asset('assets/images/Arrow.svg'),
         ),
       ),
       title: Text(text,
       style: Styles.style25,
       ),
       centerTitle: true,
       elevation: 0,
       backgroundColor: Colors.transparent,
    );
  }