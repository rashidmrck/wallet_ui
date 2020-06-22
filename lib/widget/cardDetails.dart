import 'package:flutter/material.dart';
import 'package:flutterui1/config/color.dart';

class CardDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              'images/mastercardlogo.png',
              scale: 2,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 50,
                width: 70,
                decoration: BoxDecoration(
                  boxShadow: AppColor.circleShadow,
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        '**** **** **** ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text('1234',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20))
                    ],
                  ),
                  Text('Mohammed Rashid C.K',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
