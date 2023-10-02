import 'package:in_app_payment/configurations/payment_config.dart';
import 'package:pay/pay.dart';

void applePay({required String amountToPay}) {
  ApplePayButton(
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
