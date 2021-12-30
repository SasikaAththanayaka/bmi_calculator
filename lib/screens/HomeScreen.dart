import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int height = 150;
  int weight = 45;
  int age = 25;
  double result = 0;
  Color maleBoxColr = Colors.blue;
  Color femaleBoxColor = Colors.blue;
  Color activateColr = Colors.white70;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleBoxColr == Colors.blue) {
        maleBoxColr = Colors.red;
        femaleBoxColor = Colors.blue;
      } else {
        maleBoxColr = Colors.blue;
      }
    } else {
      if (femaleBoxColor == Colors.blue) {
        femaleBoxColor = Colors.red;
        maleBoxColr = Colors.blue;
      } else {
        femaleBoxColor = Colors.blue;
      }
    }
  }

  String calBMI(int w, int h) {
    String textResult = "";
    result = w / pow(h / 100, 2);
    if (result > 25) {
      textResult = "You\'re over weight";
    } else if (result >= 18.5 && result <= 25) {
      textResult = "You have normal weight";
    } else {
      textResult = "You\'re under weight";
    }
    return textResult;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "BMI Calculator",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
        )),
      ),
      backgroundColor: Colors.black12,
      body: Column(
        children: <Widget>[
          //FIRST ROW
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: Container(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: Icon(
                                FontAwesomeIcons.mars,
                                size: 85.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: maleBoxColr,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: Container(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            /*Text(
                              "FEMALE",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                fontSize: 25.0,
                              ),
                            ),*/
                            Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: Icon(
                                FontAwesomeIcons.female,
                                size: 85.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: femaleBoxColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //SECOND ROW
          Expanded(
            child: Container(
              child: Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        "HEIGHT",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 30,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                        Text(
                          "  cm",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      min: 100.0,
                      max: 200.0,
                      activeColor: activateColr,
                      inactiveColor: Colors.white30,
                      onChanged: (double value) {
                        setState(() {
                          height = value.round();
                          activateColr = Colors.redAccent;
                        });
                      },
                    ),
                  ],
                ),
              ),
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.blue,
              ),
            ),
          ),
          //THIRD ROW
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "Weight",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              weight.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 26,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "  Kg",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: CircleAvatar(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.blue,
                                  size: 30.0,
                                ),
                                backgroundColor: Colors.white,
                                radius: 28.0,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: CircleAvatar(
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.blue,
                                ),
                                backgroundColor: Colors.white,
                                radius: 28.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.blue,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "AGE",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 26,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: CircleAvatar(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.blue,
                                ),
                                backgroundColor: Colors.white,
                                radius: 28.0,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: CircleAvatar(
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.blue,
                                ),
                                backgroundColor: Colors.white,
                                radius: 28.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Center(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    String textResult = calBMI(weight, height);

                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              height: 200.0,
                              margin: EdgeInsets.all(10.0),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                  Text(
                                    "RESULT",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 28.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Text(
                                    result.toStringAsFixed(1),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Text(
                                    textResult,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  });
                },
                child: Text(
                  "CALCULATE",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 30,
                      color: Colors.white),
                ),
              ),
            ),
            height: MediaQuery.of(context).size.height * .08,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
