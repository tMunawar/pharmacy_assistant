import 'package:flutter/material.dart';
import 'package:pharmacy_assistant/shared/theme.dart';

class PurchasePage extends StatelessWidget {
  const PurchasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimeColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: const [],
          ),
        ),
      ),
    );
  }
}
