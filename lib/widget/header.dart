import 'package:flutter/material.dart';
import 'package:flutterui1/config/color.dart';

class WalletHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Mr CK's Wallet",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              shape: BoxShape.circle,
              boxShadow: AppColor.circleShadow,
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepOrange,
                  ),
                  child: Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      shape: BoxShape.circle,
                      boxShadow: AppColor.circleShadow,
                    ),
                    child: Center(
                      child: Icon(Icons.notifications),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
