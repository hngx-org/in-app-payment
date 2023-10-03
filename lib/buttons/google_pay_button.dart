// ignore_for_file: camel_case_types

// import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:in_app_payment/configurations/payment_config.dart';
import 'package:pay/pay.dart';
// import 'package:http/http.dart' as http;



import 'package:flutter/material.dart';

googlePay({required String amountToPay}) {
  return Container(
    child: GooglePayButton(
        loadingIndicator: CircularProgressIndicator(),
        paymentConfiguration: PaymentConfiguration.fromJsonString(AppPayment.googlePayConfig),
        onPaymentResult: (result) {
          print(result);
        },
        paymentItems: [
          PaymentItem(amount: amountToPay, status: PaymentItemStatus.final_price)
        ]),
  );
}


// Future<PaymentResult> sendGooglePaymentResult( String paymentResult) async {
//   final response = await http.post(
//     Uri.parse('https://api/'),
//
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(<String, String>{
//       // 'title': title,
//       'paymentResult': paymentResult,
//
//     }),
//   );
//
//   if (response.statusCode == 201) {
//     // If the server did return a 201 CREATED response,
//     // then parse the JSON.
//     // print(response.statusCode);
//     // print(response.body);
//     return PaymentResult.fromJson(jsonDecode(response.body));
//   } else {
//     // If the server did not return a 201 CREATED response,
//     // then throw an exception.
//     throw Exception('Failed to create payment result.');
//   }
// }
//
//
//
// class PaymentResult {
//   final String paymentResult;
//
//   PaymentResult({
//     required this.paymentResult,
//   });
//
//   factory PaymentResult.fromJson(Map<String, dynamic> json) {
//     return PaymentResult(
//       paymentResult: json['paymentResult'],
//     );
//   }
// }
//
//
//
// class googlePayButton extends StatefulWidget {
//   final String itemName;
//   final String amountToPay;
//
//   const googlePayButton({super.key, required this.itemName, required this.amountToPay});
//
//   @override
//   // ignore: no_logic_in_create_state
//   State<googlePayButton> createState() => _googlePayButtonState(itemName, amountToPay);
// }
//
// class _googlePayButtonState extends State<googlePayButton> {
//   final String itemName;
//   final String amountToPay;
//
//   _googlePayButtonState(this.itemName, this.amountToPay);
//
//
//   // late String newitemName;
//   // late String newamountToPay;
//
//   // @override
//   // void initState(){
//   //   super.initState();
//   //   newitemName = widget.itemName;
//   //   newamountToPay = widget.amountToPay;
//   // }
//   @override
//   Widget build(BuildContext context) {
//     return GooglePayButton(
//       paymentConfiguration:
//           PaymentConfiguration.fromJsonString(AppPayment.googlePayConfig),
//       onPaymentResult: onGooglePaymentResult,
//       paymentItems: [
//         PaymentItem(
//           label: itemName,
//           amount: amountToPay,
//           status: PaymentItemStatus.final_price,
//         ),
//       ]
//     );
//   }
// }
//
//
// void onGooglePaymentResult(paymentResult) {
//     debugPrint(paymentResult.toString());
//     // TODO: Send the result to the server.
//   }