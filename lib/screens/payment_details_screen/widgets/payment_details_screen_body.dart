
import 'package:chekout_app/core/widgets/custom_button.dart';
import 'package:chekout_app/screens/thankyou_screen/view/thankYou_screen_view.dart';
import 'package:flutter/material.dart';
import 'custom_credit_card.dart';
import 'payment_methode_list_view.dart';




class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({super.key});

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {

   GlobalKey<FormState> formKey = GlobalKey();
   AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return   CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child:  PaymentMethodListView(),
        ),
         SliverToBoxAdapter(
          child:  CustomCreditCardView(
            autovalidateMode: autovalidateMode,
            formKey: formKey,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50,
              left: 16,right: 16
              ),
              child: InkWell(
                onTap: () {
                  if(formKey.currentState!.validate()){
                    formKey.currentState!.save();
                  }else{
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ThankYouScreenView()));
              autovalidateMode = AutovalidateMode.always;
              setState(() {
                
              });
                  }
                },
                child: const CustomButton(text: 'Pay')),
            )),
        ),
        
      ]
      ,
    );
  }
}




