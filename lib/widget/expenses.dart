import 'package:flutter/material.dart';
import 'package:flutterui1/config/color.dart';
import 'package:flutterui1/config/string.dart';
import 'package:flutterui1/widget/piehart.dart';

class ExpensesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Expenses',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: category
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 5,
                                backgroundColor:
                                    AppColor.pieColors[category.indexOf(e)],
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                e['name'],
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            Expanded(
              child: PieChart(),
            ),
          ],
        ),
      ],
    );
  }
}
