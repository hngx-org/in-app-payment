import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:in_app_payment/configurations/payment_config.dart';
import 'package:pay/pay.dart';

class HNGPay {
  googlePay({required String amountToPay}) {
    return Container(
      child: GooglePayButton(
          loadingIndicator: const CircularProgressIndicator(),
          paymentConfiguration:
              PaymentConfiguration.fromJsonString(AppPayment.googlePayConfig),
          onPaymentResult: (result) {
            debugPrint(result.toString());
            //TODO : also send to backend
          },
          paymentItems: [
            PaymentItem(
                amount: amountToPay, status: PaymentItemStatus.final_price)
          ]),
    );
  }

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
        debugPrint(result.toString());
        // TODO: Send the result to the backend.
      },
    );
  }
}
