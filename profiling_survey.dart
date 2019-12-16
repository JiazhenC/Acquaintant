import 'survey_result.dart';
import 'package:flutter/material.dart';

class MySurvey extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => ProfilingSurvey();
}
class ProfilingSurvey extends State<MySurvey> {
  int radioValue1 = -1;
  Color color1 = Colors.white;
  int radioValue2 = -1;
  Color color2 = Colors.white;
  int radioValue3 = -1;
  Color color3 = Colors.white;
  int radioValue4 = -1;
  Color color4 = Colors.white;
  int radioValue5 = -1;
  Color color5 = Colors.white;
  int radioValue6 = -1;
  Color color6 = Colors.white;
  int radioValue7 = -1;
  Color color7 = Colors.white;
  int radioValue8 = -1;
  Color color8 = Colors.white;
  int radioValue9 = -1;
  Color color9 = Colors.white;
  int radioValue10 = -1;
  Color color10 = Colors.white;
  int result;


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

  void handleRadioChange4(int value) {
    setState(() {
      color4 = Colors.white;
      radioValue4 = value;
    });
  }

  void handleRadioChange5(int value) {
    setState(() {
      color5 = Colors.white;
      radioValue5 = value;
    });
  }

  void handleRadioChange6(int value) {
    setState(() {
      color6 = Colors.white;
      radioValue6 = value;
    });
  }

  void handleRadioChange7(int value) {
    setState(() {
      color7 = Colors.white;
      radioValue7 = value;
    });
  }

  void handleRadioChange8(int value) {
    setState(() {
      color8 = Colors.white;
      radioValue8 = value;
    });
  }

  void handleRadioChange9(int value) {
    setState(() {
      color9 = Colors.white;
      radioValue9 = value;
    });
  }

  void handleRadioChange10(int value) {
    setState(() {
      color10 = Colors.white;
      radioValue10 = value;
    });
  }

  void reset() {
    handleRadioChange1(-1);
    handleRadioChange2(-1);
    handleRadioChange3(-1);
    handleRadioChange4(-1);
    handleRadioChange5(-1);
    handleRadioChange6(-1);
    handleRadioChange7(-1);
    handleRadioChange8(-1);
    handleRadioChange9(-1);
    handleRadioChange10(-1);
  }


  void validateResult() {
    setState(() {
      if (radioValue1 != -1 && radioValue2 != -1 && radioValue3 != -1 && radioValue4 != -1 && radioValue5 != -1
          && radioValue6 != -1 && radioValue7 != -1 && radioValue8 != -1 && radioValue9 != -1 && radioValue10 != -1) {
        result = 0;

        switch (radioValue1){
          case 0 : result = result + 1;break;
          case 1 : result = result + 2;break;
          case 2 : result = result + 3;break;
          case 3 : result = result + 4;break;
          case 4 : result = result + 5;break;
        }

        switch (radioValue2){
          case 0 : result = result + 1;break;
          case 1 : result = result + 2;break;
          case 2 : result = result + 3;break;
          case 3 : result = result + 4;break;
          case 4 : result = result + 5;break;
        }

        switch (radioValue3){
          case 0 : result = result + 1;break;
          case 1 : result = result + 2;break;
          case 2 : result = result + 3;break;
          case 3 : result = result + 4;break;
          case 4 : result = result + 5;break;
        }

        switch (radioValue4){
          case 0 : result = result + 1;break;
          case 1 : result = result + 2;break;
          case 2 : result = result + 3;break;
          case 3 : result = result + 4;break;
          case 4 : result = result + 5;break;
        }

        switch (radioValue5){
          case 0 : result = result + 1;break;
          case 1 : result = result + 2;break;
          case 2 : result = result + 3;break;
          case 3 : result = result + 4;break;
          case 4 : result = result + 5;break;
        }

        switch (radioValue6){
          case 0 : result = result + 1;break;
          case 1 : result = result + 3;break;
          case 2 : result = result + 5;break;
        }

        switch (radioValue7){
          case 0 : result = result + 1;break;
          case 1 : result = result + 2;break;
          case 2 : result = result + 3;break;
          case 3 : result = result + 4;break;
          case 4 : result = result + 5;break;
        }

        switch (radioValue8){
          case 0 : result = result + 1;break;
          case 1 : result = result + 2;break;
          case 2 : result = result + 3;break;
          case 3 : result = result + 4;break;
          case 4 : result = result + 5;break;
        }

        switch (radioValue9){
          case 0 : result = result + 1;break;
          case 1 : result = result + 2;break;
          case 2 : result = result + 3;break;
          case 3 : result = result + 4;break;
          case 4 : result = result + 5;break;
        }

        switch (radioValue10){
          case 0 : result = result + 1;break;
          case 1 : result = result + 2;break;
          case 2 : result = result + 3;break;
          case 3 : result = result + 4;break;
          case 4 : result = result + 5;break;
        }
        print(result);
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> survey_Result(result)),);

      } else {
        alertSubmit();
        if (radioValue1 == -1) {
          color1 = Color.fromARGB(50, 255, 0, 0);
        }
        if (radioValue2 == -1) {
          color2 = Color.fromARGB(50, 255, 0, 0);
        }
        if (radioValue3 == -1) {
          color3 = Color.fromARGB(50, 255, 0, 0);
        }
        if (radioValue4 == -1) {
          color4 = Color.fromARGB(50, 255, 0, 0);
        }
        if (radioValue5 == -1) {
          color5 = Color.fromARGB(50, 255, 0, 0);
        }
        if (radioValue6 == -1) {
          color6 = Color.fromARGB(50, 255, 0, 0);
        }
        if (radioValue7 == -1) {
          color7 = Color.fromARGB(50, 255, 0, 0);
        }
        if (radioValue8 == -1) {
          color8 = Color.fromARGB(50, 255, 0, 0);
        }
        if (radioValue9 == -1) {
          color9 = Color.fromARGB(50, 255, 0, 0);
        }
        if (radioValue10 == -1) {
          color10 = Color.fromARGB(50, 255, 0, 0);
        }
      }
    });
  }

  Future<bool> alertBack() {
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
  void alertSubmit() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Warning"),
          content: Text("Please make sure you answer all the questions!"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            FlatButton(
              child: Text("OK"),
              onPressed: () {
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
      onWillPop: alertBack,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              alertBack();
            },
          ),
          title: Text("Student Profiling Survey"),
        ),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
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
                padding: EdgeInsets.all(4.0),
                color: color1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 6.0),
                      child: Text(
                        "How would you describe yourself as?",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    RadioListTile(
                      value: 0,
                      groupValue: radioValue1,
                      onChanged: handleRadioChange1,
                      title: Text(
                        "Intelligent",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 1,
                      groupValue: radioValue1,
                      onChanged: handleRadioChange1,
                      title: Text(
                        "Down-to-earth",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 2,
                      groupValue: radioValue1,
                      onChanged: handleRadioChange1,
                      title: Text(
                        "Generous",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 3,
                      groupValue: radioValue1,
                      onChanged: handleRadioChange1,
                      title: Text(
                        "Original",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 4,
                      groupValue: radioValue1,
                      onChanged: handleRadioChange1,
                      title: Text(
                        "Active",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(height: 5.0, color: Colors.black),
              Container(
                padding: EdgeInsets.all(8.0),
                color: color2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 6.0),
                      child: Text(
                        "Which category spikes your interest when reading the news?",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    RadioListTile(
                      value: 0,
                      groupValue: radioValue2,
                      onChanged: handleRadioChange2,
                      title: Text(
                        "Science and technology",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 1,
                      groupValue: radioValue2,
                      onChanged: handleRadioChange2,
                      title: Text(
                        "Business and Politics",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 2,
                      groupValue: radioValue2,
                      onChanged: handleRadioChange2,
                      title: Text(
                        "Health and Medicine",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 3,
                      groupValue: radioValue2,
                      onChanged: handleRadioChange2,
                      title: Text(
                        "Film and art / I'm not interested in reading news",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 4,
                      groupValue: radioValue2,
                      onChanged: handleRadioChange2,
                      title: Text(
                        "Sports",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(height: 5.0, color: Colors.black),
              Container(
                padding: EdgeInsets.all(8.0),
                color: color3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 6.0),
                      child: Text(
                        "What is your style of thinking?",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    RadioListTile(
                      value: 0,
                      groupValue: radioValue3,
                      onChanged: handleRadioChange3,
                      title: Text(
                        "Logical",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 1,
                      groupValue: radioValue3,
                      onChanged: handleRadioChange3,
                      title: Text(
                        "Strategic",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 2,
                      groupValue: radioValue3,
                      onChanged: handleRadioChange3,
                      title: Text(
                        "A mix of all of them",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 3,
                      groupValue: radioValue3,
                      onChanged: handleRadioChange3,
                      title: Text(
                        "Creative",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 4,
                      groupValue: radioValue3,
                      onChanged: handleRadioChange3,
                      title: Text(
                        "Quick / Spontaneous",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(height: 5.0, color: Colors.black),
              Container(
                padding: EdgeInsets.all(8.0),
                color: color4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 6.0),
                      child: Text(
                        "Your work should be a contribution to :",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    RadioListTile(
                      value: 0,
                      groupValue: radioValue4,
                      onChanged: handleRadioChange4,
                      title: Text(
                        "Help me learn new things and innovate",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 1,
                      groupValue: radioValue4,
                      onChanged: handleRadioChange4,
                      title: Text(
                        "Help me to solve daily problems",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 2,
                      groupValue: radioValue4,
                      onChanged: handleRadioChange4,
                      title: Text(
                        "Help people to feel better",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 3,
                      groupValue: radioValue4,
                      onChanged: handleRadioChange4,
                      title: Text(
                        "Express myself",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 4,
                      groupValue: radioValue4,
                      onChanged: handleRadioChange4,
                      title: Text(
                        "Achieve sucess",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(height: 5.0, color: Colors.black),
              Container(
                padding: EdgeInsets.all(8.0),
                color: color5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 6.0),
                      child: Text(
                        "Choose your favorite activity out of the following ones :",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    RadioListTile(
                      value: 0,
                      groupValue: radioValue5,
                      onChanged: handleRadioChange5,
                      title: Text(
                        "Reading",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 1,
                      groupValue: radioValue5,
                      onChanged: handleRadioChange5,
                      title: Text(
                        "Gaming",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 2,
                      groupValue: radioValue5,
                      onChanged: handleRadioChange5,
                      title: Text(
                        "Hang out with friends",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 3,
                      groupValue: radioValue5,
                      onChanged: handleRadioChange5,
                      title: Text(
                        "Drawing / Writing / Painting",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 4,
                      groupValue: radioValue5,
                      onChanged: handleRadioChange5,
                      title: Text(
                        "Practicing / Watching sports",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(height: 5.0, color: Colors.black),
              Container(
                padding: EdgeInsets.all(8.0),
                color: color6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 6.0),
                      child: Text(
                        "Which of the following options is your biggest asset?",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    RadioListTile(
                      value: 0,
                      groupValue: radioValue6,
                      onChanged: handleRadioChange6,
                      title: Text(
                        "My mind",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 1,
                      groupValue: radioValue6,
                      onChanged: handleRadioChange6,
                      title: Text(
                        "My heart",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 2,
                      groupValue: radioValue6,
                      onChanged: handleRadioChange6,
                      title: Text(
                        "My body",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(height: 5.0, color: Colors.black),
              Container(
                padding: EdgeInsets.all(8.0),
                color: color7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 6.0),
                      child: Text(
                        "What is your favourite subject in school?",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    RadioListTile(
                      value: 0,
                      groupValue: radioValue7,
                      onChanged: handleRadioChange7,
                      title: Text(
                        "Science",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 1,
                      groupValue: radioValue7,
                      onChanged: handleRadioChange7,
                      title: Text(
                        "Physics / Math",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 2,
                      groupValue: radioValue7,
                      onChanged: handleRadioChange7,
                      title: Text(
                        "Literature",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 3,
                      groupValue: radioValue7,
                      onChanged: handleRadioChange7,
                      title: Text(
                        "Art",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 4,
                      groupValue: radioValue7,
                      onChanged: handleRadioChange7,
                      title: Text(
                        "Sports",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(height: 5.0, color: Colors.black),
              Container(
                padding: EdgeInsets.all(8.0),
                color: color8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 6.0),
                      child: Text(
                        "What would you like to do at work?",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    RadioListTile(
                      value: 0,
                      groupValue: radioValue8,
                      onChanged: handleRadioChange8,
                      title: Text(
                        "Invent new things",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 1,
                      groupValue: radioValue8,
                      onChanged: handleRadioChange8,
                      title: Text(
                        "Figure things out",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 2,
                      groupValue: radioValue8,
                      onChanged: handleRadioChange8,
                      title: Text(
                        "Help people",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 3,
                      groupValue: radioValue8,
                      onChanged: handleRadioChange8,
                      title: Text(
                        "To be creative",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 4,
                      groupValue: radioValue8,
                      onChanged: handleRadioChange8,
                      title: Text(
                        "Moving around while working",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(height: 5.0, color: Colors.black),
              Container(
                padding: EdgeInsets.all(8.0),
                color: color9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 6.0),
                      child: Text(
                        "Which one describes you the most?",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    RadioListTile(
                      value: 0,
                      groupValue: radioValue9,
                      onChanged: handleRadioChange9,
                      title: Text(
                        "Smart",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 1,
                      groupValue: radioValue9,
                      onChanged: handleRadioChange9,
                      title: Text(
                        "Social",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 2,
                      groupValue: radioValue9,
                      onChanged: handleRadioChange9,
                      title: Text(
                        "Caretaker",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 3,
                      groupValue: radioValue9,
                      onChanged: handleRadioChange9,
                      title: Text(
                        "Weird and Wacky",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 4,
                      groupValue: radioValue9,
                      onChanged: handleRadioChange9,
                      title: Text(
                        "Outgoing",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(height: 5.0, color: Colors.black),
              Container(
                padding: EdgeInsets.all(8.0),
                color: color10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 6.0),
                      child: Text(
                        "How's your result at school?",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    RadioListTile(
                      value: 0,
                      groupValue: radioValue10,
                      onChanged: handleRadioChange10,
                      title: Text(
                        "Ace'd the exam",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 1,
                      groupValue: radioValue10,
                      onChanged: handleRadioChange10,
                      title: Text(
                        "Excellent",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 2,
                      groupValue: radioValue10,
                      onChanged: handleRadioChange10,
                      title: Text(
                        "Good",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 3,
                      groupValue: radioValue10,
                      onChanged: handleRadioChange10,
                      title: Text(
                        "Bad",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    RadioListTile(
                      value: 4,
                      groupValue: radioValue10,
                      onChanged: handleRadioChange10,
                      title: Text(
                        "Didn't perform well",
                        style: TextStyle(fontSize: 16.0),
                      ),
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
      ),
    );
  }
}
