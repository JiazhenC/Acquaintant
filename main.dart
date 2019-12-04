import 'package:flutter/material.dart';

void main() => runApp(Survey());

class Survey extends StatefulWidget {
  @override
  MySurvey createState() => MySurvey();
}

class MySurvey extends State<Survey> {
  final GlobalKey<ScaffoldState> _scaffold = new GlobalKey<ScaffoldState>();
  int radioValue1 = -1;
  Color color1 = Colors.white;
  int radioValue2 = -1;
  Color color2 = Colors.white;
  int radioValue3 = -1;
  Color color3 = Colors.white;

  void handleRadioChange1(int value) {
    setState(() {
      color1 = Colors.white;
      radioValue1 = value;
    });
  }

  void handleRadioChange2(int value) {
    setState(() {
      color2 = Colors.white;
      radioValue2 = value;
    });
  }

  void handleRadioChange3(int value) {
    setState(() {
      color3 = Colors.white;
      radioValue3 = value;
    });
  }

  void reset() {
    handleRadioChange1(-1);
    handleRadioChange2(-1);
    handleRadioChange3(-1);
  }

  void validateResult() {
    setState(() {
      if (radioValue1 != -1 && radioValue2 != -1 && radioValue3 != -1) {
      } else {
        final popUp = SnackBar(
          content: Text("Please make sure you answer all the questions"),
          action: SnackBarAction(
            label: "OK",
            onPressed: () {},
          ),
        );
        _scaffold.currentState.showSnackBar(popUp);
        if (radioValue1 == -1) {
          color1 = Color.fromARGB(50, 255, 0, 0);
        }
        if (radioValue2 == -1) {
          color2 = Color.fromARGB(50, 255, 0, 0);
        }
        if (radioValue3 == -1) {
          color3 = Color.fromARGB(50, 255, 0, 0);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      key: _scaffold,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text("Student Profiling Survey"),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
        child: ListView(
          children: <Widget>[
            Text(
              "   Instruction:",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.all(4.0),
            ),
            Divider(height: 5.0, color: Colors.black),
            Container(
              padding: EdgeInsets.all(8.0),
              color: color1,
              child: Column(
                children: <Widget>[
                  Text(
                    "Question 1",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Radio(
                        value: 0,
                        groupValue: radioValue1,
                        onChanged: handleRadioChange1,
                      ),
                      Text(
                        "Option 1",
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Radio(
                        value: 1,
                        groupValue: radioValue1,
                        onChanged: handleRadioChange1,
                      ),
                      Text(
                        "Option 2",
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Radio(
                        value: 2,
                        groupValue: radioValue1,
                        onChanged: handleRadioChange1,
                      ),
                      Text(
                        "Option 3",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(height: 5.0, color: Colors.black),
            Container(
              padding: EdgeInsets.all(8.0),
              color: color2,
              child: Column(
                children: <Widget>[
                  Text(
                    "Question 2",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Radio(
                        value: 0,
                        groupValue: radioValue2,
                        onChanged: handleRadioChange2,
                      ),
                      Text(
                        "Option 1",
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Radio(
                        value: 1,
                        groupValue: radioValue2,
                        onChanged: handleRadioChange2,
                      ),
                      Text(
                        "Option 2",
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Radio(
                        value: 2,
                        groupValue: radioValue2,
                        onChanged: handleRadioChange2,
                      ),
                      Text(
                        "Option 3",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(height: 5.0, color: Colors.black),
            Container(
              padding: EdgeInsets.all(8.0),
              color: color3,
              child: Column(
                children: <Widget>[
                  Text(
                    "Question 3",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Radio(
                        value: 0,
                        groupValue: radioValue3,
                        onChanged: handleRadioChange3,
                      ),
                      Text(
                        "Option 1",
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Radio(
                        value: 1,
                        groupValue: radioValue3,
                        onChanged: handleRadioChange3,
                      ),
                      Text(
                        "Option 2",
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Radio(
                        value: 2,
                        groupValue: radioValue3,
                        onChanged: handleRadioChange3,
                      ),
                      Text(
                        "Option 3",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(height: 5.0, color: Colors.black),
            Padding(
              padding: EdgeInsets.all(4.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: reset,
                  child: Text(
                    "Reset Selection",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                ),
                RaisedButton(
                  onPressed: validateResult,
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
