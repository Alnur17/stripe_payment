
import 'package:flutter/material.dart';
import 'package:stripe_payment/services/stripe_service.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            StripeService.instance.makePayment();
          },
          child: const Text('Purchase'),
        ),
      ),
    );
  }
}
