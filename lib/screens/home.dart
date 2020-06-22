import 'package:flutter/material.dart';
import 'package:flutterui1/config/color.dart';
import 'package:flutterui1/widget/cardSection.dart';
import 'package:flutterui1/widget/expenses.dart';
import 'package:flutterui1/widget/header.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Container(
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(
            child: CardSection(),
          ),
          Expanded(
            child: ExpensesSection(),
          )
        ],
      ),
    );
  }
}
