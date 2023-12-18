


import 'package:chekout_app/screens/payment_details_screen/widgets/payment_method.dart';
import 'package:flutter/material.dart';


class PaymentMethodListView extends StatefulWidget {
  const PaymentMethodListView({super.key});

  @override
  State<PaymentMethodListView> createState() => _PaymentMethodListViewState();
}

class _PaymentMethodListViewState extends State<PaymentMethodListView> {

  List<String> paymentMethodList = [
    'assets/images/card.svg',
    'assets/images/paypal.svg'
  ];

  int curentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
         height: MediaQuery.of(context).size.height * .075,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethodList.length,
        itemBuilder: (context, index) {
        return Padding(
          padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .025),
          child: CustomPaymentMethod(
             isActive:  curentIndex == index,
            onTap: () {
              curentIndex = index;
              setState(() {});
            },
            image: paymentMethodList[index],
          ),
        );
      },),
    );
  }
}