import 'package:flutter/material.dart';
import 'package:in_app_payment/configurations/payment_config.dart';
import 'package:pay/pay.dart';

class HNGPay {
  /// Displays a google pay button on Android device to handle payment
  googlePay({required String amountToPay}) {
    return GooglePayButton(
        loadingIndicator: const CircularProgressIndicator(),
        paymentConfiguration:
            PaymentConfiguration.fromJsonString(AppPayment.googlePayConfig),
        onPaymentResult: (result) {
          //TODO : also send to backend
        },
        paymentItems: [
          PaymentItem(
              amount: amountToPay, status: PaymentItemStatus.final_price)
        ]);
  }

  /// Displays an apple pay button on IOS device to handle payment
  applePay({required String amountToPay}) {
    return ApplePayButton(
      loadingIndicator: const CircularProgressIndicator(),
      paymentConfiguration:
          PaymentConfiguration.fromJsonString(AppPayment.applePayConfig),
      paymentItems: [
        PaymentItem(
          amount: amountToPay,
          status: PaymentItemStatus.final_price,
        ),
      ],
      onPaymentResult: (result) {
        // TODO: Send the result to the backend.
      },
    );
  }
}
