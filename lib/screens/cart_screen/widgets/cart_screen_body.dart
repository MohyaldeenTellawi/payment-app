



import 'package:chekout_app/core/widgets/custom_button.dart';
import 'package:chekout_app/screens/cart_screen/widgets/card_order_total_info.dart';
import 'package:flutter/material.dart';

import '../../payment_details_screen/view/payment_screen_view.dart';
import 'cart_order_info.dart';

class CartScreenBody extends StatelessWidget {
  const CartScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .045
      ),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * .025),
          Image.asset('assets/images/Group.png'),
          SizedBox(height: MediaQuery.of(context).size.height * .03),
          const CartOrderInfo(
            text: 'Order Subtotal',
            value: r'$42.97',
          ),
              const CartOrderInfo(
            text: 'Discount',
            value: r'$0',
          ),
              const CartOrderInfo(
            text: 'Shipping',
            value: r'$8',
          ),
            
          const Divider(
            height: 34,
            thickness: 2,
            color: Color(0xFFC6C6C6),
          ),
          const CardOrderTotlaInfo(text: 'Total', value: r'$50.97'),
          SizedBox(height: MediaQuery.of(context).size.height * .03),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const PaymentDetailsScreenView()));
            },
            child: const CustomButton(
              text: 'Complete Payment',
            ),
          ),
           SizedBox(height: MediaQuery.of(context).size.height * .03),
        ],
      ),
    );
  }
}



