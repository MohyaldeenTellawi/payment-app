

import 'package:chekout_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/payment_details_screen_body.dart';


class PaymentDetailsScreenView extends StatelessWidget {
  const PaymentDetailsScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildAppBar(text: 'Payment Details',
      onTap: () {
        Navigator.pop(context);
      },
      ),
      body: const PaymentDetailsBody(),
    );
  }
}