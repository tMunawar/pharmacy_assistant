import 'package:flutter/material.dart';
import 'package:pharmacy_assistant/screen/widgets/custome_button.dart';
import 'package:pharmacy_assistant/shared/theme.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimeColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/transaksi.png',
              height: 180,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            'Opss! Transaksin\nkamu kosong',
            style: blackStyle.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomeButton(
            text: 'Lanjut Bayar',
            onPressed: () {
              Navigator.pushNamed(context, '/detail-payment');
            },
          )
        ],
      ),
    );
  }
}
