import 'package:chekout_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/thankyou_screen_body.dart';



class ThankYouScreenView extends StatelessWidget {
  const ThankYouScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildAppBar(text: 'Payment Successfuly',
      onTap: () {
        Navigator.pop(context);
      },
      ),
      body: const ThankYouScreenBody(),
    );
  }
}