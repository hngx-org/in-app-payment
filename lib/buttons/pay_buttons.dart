import 'package:flutter/material.dart';
import 'package:in_app_payment/configurations/payment_config.dart';
import 'package:pay/pay.dart';

class HNGPay {
  /// Displays a google pay button on Android device to handle payment
  /// And Sends the userID and token to the backend for payment processing
  googlePay(BuildContext context,
      {required String amountToPay, required String userID}) {
    return GooglePayButton(
      loadingIndicator: const CircularProgressIndicator(),
      paymentConfiguration:
          PaymentConfiguration.fromJsonString(AppPayment.googlePayConfig),
      onPaymentResult: (result) {
        //TODO : also send to backend
        debugPrint(result.toString());
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Processing Payment, Thank you")));

        ///SnackBar to show payment processing
      },
      onError: (err) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              err.toString(),
            ),
          ),
        );
      },
      paymentItems: [
        PaymentItem(
          amount: amountToPay,
          status: PaymentItemStatus.final_price,
        ),
      ],
    );
  }

  /// Displays an apple pay button on IOS device to handle payment
  /// And Sends the userID and token to the backend for payment processing
  applePay(BuildContext context,
      {required String amountToPay, required String userID}) {
    return ApplePayButton(
      loadingIndicator: const CircularProgressIndicator(),
      paymentConfiguration: PaymentConfiguration.fromJsonString(
        AppPayment.applePayConfig,
      ),
      paymentItems: [
        PaymentItem(
          amount: amountToPay,
          status: PaymentItemStatus.final_price,
        ),
      ],
      onPaymentResult: (result) {
        // TODO: Send the result to the backend.
        debugPrint(result.toString());
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Processing Payment, Thank you"),
          ),
        );
      },
      onError: (err) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              err.toString(),
            ),
          ),
        );
      },
    );
  }
}
