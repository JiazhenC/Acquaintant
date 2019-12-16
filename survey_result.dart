import 'package:flutter/material.dart';

class survey_Result extends StatefulWidget {
  int result;
  String description;

  survey_Result(int result){
    this.result = result;
    if (this.result <= 17)
      description = "Scientist";
    else if (this.result >= 18 && this.result <= 26)
      description = "Social Sciences Expert";
    else if (this.result >= 27 && this.result <= 35)
      description = "Humanitarian";
    else if (this.result >= 36 && this.result <= 44)
      description = "Artist";
    else
      description = "Sportsman";

  }

  @override
  _survey_ResultState createState() => _survey_ResultState();
}

class _survey_ResultState extends State<survey_Result> {

  Future<bool> alertBack2() {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Warning"),
          content: Text("Are you sure you want to go back to main menu?\n\nAll the progress will not be saved"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            FlatButton(
              child: Text("Yes"),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text("No"),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: alertBack2,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                alertBack2();
              },
            ),
            title: Text("Result"),
          ),
          body: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Your total score is ${widget.result}",
                    style: TextStyle(
                      fontSize: 20,
                    ),),
                  Text("You are suitble to be a ${widget.description}",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ],
              ),
            ),

          ),
        )
    );
  }
}