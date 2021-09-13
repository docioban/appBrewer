import 'package:bmi_calculator/components/BottomContainer.dart';
import 'package:bmi_calculator/views/result.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../BMI_calculator.dart';
import '../components/cell.dart';
import '../constants.dart';
import '../components/icon_content.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

//111427
class _InputPageState extends State<InputPage> {
  CardGen gender;
  int valueHeight = 180;
  int valueWeight = 80;
  int valueAge = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Cell(
                    bgColor: gender == CardGen.male
                        ? kInactiveCardColor
                        : kActiveCardColor,
                    childWidget: IconContent(
                      text: 'MALE',
                      icon: FontAwesomeIcons.mars,
                    ),
                    pres: () {
                      setState(() {
                        gender = CardGen.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: Cell(
                    bgColor: gender == CardGen.female
                        ? kInactiveCardColor
                        : kActiveCardColor,
                    childWidget: IconContent(
                      text: 'FEMALE',
                      icon: FontAwesomeIcons.venus,
                    ),
                    pres: () {
                      setState(() {
                        gender = CardGen.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Cell(
              bgColor: kActiveCardColor,
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '$valueHeight',
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: kBottomContainerColor,
                      thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15, disabledThumbRadius: 10),
                      overlayColor: kBottomContainerColor.withAlpha(70),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 25.0),
                      activeTrackColor: Color(0xFFFFFFFF),
                      inactiveTrackColor: Color(0x55FFFFFF),
                    ),
                    child: Slider(
                      value: valueHeight.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          valueHeight = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Cell(
                  bgColor: kActiveCardColor,
                  childWidget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: kTextStyle,
                      ),
                      Text(
                        '$valueWeight',
                        style: kNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundButton(
                            iconData: FontAwesomeIcons.minus,
                            onPreassed: () {
                              setState(() {
                                if (valueWeight > 10) valueWeight--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          RoundButton(
                            iconData: FontAwesomeIcons.plus,
                            onPreassed: () {
                              setState(() {
                                if (valueWeight < 200) valueWeight++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
                Expanded(
                  child: Cell(
                    bgColor: kActiveCardColor,
                    childWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: kTextStyle,
                        ),
                        Text(
                          '$valueAge',
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              iconData: FontAwesomeIcons.minus,
                              onPreassed: () {
                                setState(() {
                                  if (valueAge > 1) valueAge--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            RoundButton(
                              iconData: FontAwesomeIcons.plus,
                              onPreassed: () {
                                setState(() {
                                  if (valueAge < 150) valueAge++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomContainer(
            text: "Calculator",
            onTap: () {
              BMIcalculator result = BMIcalculator(height: valueHeight/100.0, weight: valueWeight);

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultPage(result: result)));
              // Navigator.pushNamed(context, '/result');
            },
          ),
        ],
      ),
    );
  }
}

class RoundButton extends StatelessWidget {
  RoundButton({this.iconData, this.onPreassed});

  final IconData iconData;
  final Function onPreassed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPreassed,
      child: Icon(iconData),
      shape: CircleBorder(),
      fillColor: kPlusMinusColorButton,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
