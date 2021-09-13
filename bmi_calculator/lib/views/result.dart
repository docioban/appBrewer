import 'package:bmi_calculator/components/BottomContainer.dart';
import 'package:bmi_calculator/components/cell.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../BMI_calculator.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.result});

  final BMIcalculator result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: Cell(
              bgColor: kActiveCardColor,
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    // 'fsdag',
                    result.getResult(),
                    style: kGreenTextStyle,
                  ),
                  Text(
                    result.calculateBMI(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    result.getDescription(),
                    style: kDescriptionTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomContainer(
            text: "RE-CALCULATE",
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
