import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:pharmacy_assistant/screen/pages/chating_page.dart';
import 'package:pharmacy_assistant/screen/pages/home_page.dart';
import 'package:pharmacy_assistant/screen/pages/setting_page.dart';
import 'package:pharmacy_assistant/screen/pages/shop_page.dart';
import 'package:pharmacy_assistant/screen/pages/transaction_page.dart';
import 'package:pharmacy_assistant/screen/widgets/navigator_button.dart';
import 'package:pharmacy_assistant/shared/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 2;

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const NavigatorItem(
        url: 'assets/shop.png',
      ),
      const NavigatorItem(
        url: 'assets/transaction.png',
      ),
      const NavigatorItem(
        url: 'assets/home.png',
      ),
      const NavigatorItem(
        url: 'assets/chat.png',
      ),
      const NavigatorItem(
        url: 'assets/setting.png',
      ),
    ];

    Widget buildContent(int index) {
      switch (index) {
        case 0:
          return const ShopPage();
        case 1:
          return const TransactionPage();
        case 2:
          return const HomePage();
        case 3:
          return const ChattingPage();
        case 4:
          return const SettingPage();
        default:
          return const HomePage();
      }
    }

    return Scaffold(
      backgroundColor: kPrimeColor,
      body: buildContent(index),
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: const Duration(milliseconds: 600),
        color: kWhiteColor,
        backgroundColor: Colors.transparent,
        height: 65,
        index: index,
        items: items,
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
      ),
    );
  }
}
