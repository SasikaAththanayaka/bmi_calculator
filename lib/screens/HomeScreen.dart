import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int height = 150;
  int weight = 45;
  double result = 0;
  Color selectedColor = Colors.black38;

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
      backgroundColor: Colors.blue,
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
                        selectedColor = Colors.black;
                      });
                    },
                    child: Container(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 50.0, bottom: 35.0),
                              child: Text(
                                "MALE",
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                  fontSize: 32.0,
                                ),
                              ),
                            ),
                            Icon(Icons.mic_sharp),
                          ],
                        ),
                      ),
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: selectedColor,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 50.0, bottom: 35.0),
                            child: Text(
                              "FEMALE",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                fontSize: 32.0,
                              ),
                            ),
                          ),
                          Icon(Icons.mic_sharp),
                        ],
                      ),
                    ),
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.black45,
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
                      activeColor: Colors.white60,
                      inactiveColor: Colors.white30,
                      onChanged: (double value) {
                        setState(() {
                          height = value.round();
                        });
                      },
                    ),
                  ],
                ),
              ),
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.black38,
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
                            CircleAvatar(
                              child: Icon(
                                Icons.add,
                                color: Colors.blueAccent,
                              ),
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              child: Icon(
                                Icons.access_alarms,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.black38,
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
                          weight.toString(),
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
                            CircleAvatar(
                              child: Icon(
                                Icons.add,
                                color: Colors.blueAccent,
                              ),
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              child: Icon(
                                Icons.access_alarms,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.black38,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Center(
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  "CALCULATOR",
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
              color: Colors.black38,
            ),
          )
        ],
      ),
    );
  }
}
