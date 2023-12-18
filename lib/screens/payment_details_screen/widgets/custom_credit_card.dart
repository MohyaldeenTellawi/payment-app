


import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';



class CustomCreditCardView extends StatefulWidget {
  const CustomCreditCardView({super.key,required this.formKey,required this.autovalidateMode});
final GlobalKey<FormState> formKey;
final AutovalidateMode autovalidateMode;
  @override
  State<CustomCreditCardView> createState() => _CustomCreditCardViewState();
}

class _CustomCreditCardViewState extends State<CustomCreditCardView> {
   String cardNumber = '';
   String expiryDate = '';
   String cardHolderName = '';
   String cvvCode = '';
   CardType cardType = CardType.visa;
  
  
   bool showBackView = false;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        CreditCardWidget(
          cardType:cardType,
          animationDuration: const Duration(milliseconds: 300),
          cardBgColor: Colors.teal.withOpacity(0.5),
          isHolderNameVisible: true,
          cardNumber: cardNumber, 
        expiryDate: expiryDate, 
        cardHolderName: cardHolderName, 
        cvvCode: cvvCode, 
        showBackView: showBackView, 
        onCreditCardWidgetChange: (value){}),
        CreditCardForm(
          autovalidateMode: widget.autovalidateMode,
          cardNumber: cardNumber, 
        expiryDate: expiryDate, 
        cardHolderName: cardHolderName, 
        cvvCode: cvvCode, 
        onCreditCardModelChange: (creditCardModel){
          cardNumber = creditCardModel.cardNumber;
          expiryDate = creditCardModel.expiryDate;
          cardHolderName = creditCardModel.cardHolderName;
          cvvCode = creditCardModel.cvvCode;
          showBackView = creditCardModel.isCvvFocused;
          setState(() {});
        }, 
        formKey: widget.formKey)
      ],
    );
  }
}