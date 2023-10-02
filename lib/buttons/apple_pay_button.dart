import 'package:flutter/widgets.dart';
import 'package:in_app_payment/configurations/payment_config.dart';
import 'package:pay/pay.dart';

class applePayButton extends StatelessWidget {
  const applePayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ApplePayButton(
      paymentConfiguration:
          PaymentConfiguration.fromJsonString(AppPayment.applePayConfig),
      onPaymentResult: (Map<String, dynamic> result) {
        print(result);
      },
      paymentItems: const [
      PaymentItem(
        //dummy data t
        label: 'Item A',
        amount: '0.01',
        status: PaymentItemStatus.final_price,
      ),]
    );
  }
}
