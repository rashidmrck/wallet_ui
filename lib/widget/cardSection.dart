import 'package:flutter/material.dart';
import 'package:flutterui1/config/color.dart';
import 'package:flutterui1/widget/cardDetails.dart';

class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.topLeft,
          child: Text(
            'Card Selected',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    boxShadow: AppColor.circleShadow,
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white30,
                          boxShadow: AppColor.circleShadow,
                        ),
                      ),
                      top: 50,
                      bottom: -200,
                    ),
                    Positioned.fill(
                      child: Container(
                        width: MediaQuery.of(context).size.width - 100,
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          boxShadow: AppColor.circleShadow,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomLeft: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(100),
                          ),
                        ),
                      ),
                      left: 0,
                      top: 0,
                      bottom: 0,
                      right: 250,
                    ),
                    CardDetails(),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
