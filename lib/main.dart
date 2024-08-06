import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Center(child: Text('BMI CALCULATOR',style: TextStyle(color: Colors.white),)),
      ),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: ReusebelCode(
                colour: activeCardColour,
                cardChild: Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.mars,
                      size: 80.0,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text('MALE', style: TextStyle(
                      fontSize: 18.0,color: Color(0xFF8DBE98)
                    ),)

                  ],
                ),
              )
              ),
              Expanded(child: ReusebelCode(
                colour: activeCardColour,
              ))
            ],
          )),
          Expanded(child: ReusebelCode(
            colour: activeCardColour,
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: ReusebelCode(
                colour: activeCardColour,
              )),
              Expanded(child: ReusebelCode(
                colour: activeCardColour,
              ))
            ],
          )),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),

        ],
      ),
    );
  }
}
class ReusebelCode extends StatelessWidget {
  ReusebelCode({required this.colour});
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}