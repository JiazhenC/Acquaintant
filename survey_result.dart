import 'package:flutter/material.dart';


class survey_Result extends StatefulWidget {
  int result;
  String field;
  String description;
  AssetImage image;

  survey_Result(int result){
    this.result = result;
    if (this.result <= 17) {
      field = "Scientist";
      description = "• Chemistry\n• Physics\n• Biology";
      image = new AssetImage('assets/images/science.jpg');
    }else if (this.result >= 18 && this.result <= 26) {
      field = "Social Sciences Expert";
      description = "• Economics \n• History\n• Law\n• Lingustics\n• Sociology";
      image = new AssetImage('assets/images/social_science.jpg');
    }else if (this.result >= 27 && this.result <= 35) {
      field = "Humanitarian";
      description = "• Public Health in Humanitarian\n  Crises\n• Introduction to Humanitarian\n  Aid\n• Global Health and\n  Humanitarianism";
      image = new AssetImage('assets/images/humanitarian.jpg');
    }else if (this.result >= 36 && this.result <= 44) {
      field = "Artist";
      description = "• Animation\n• Art & Design\n• Art Theory\n• Illustration\n• Visual Arts\n• Art Studies";
      image = new AssetImage('assets/images/artist.jpg');
    }else {
      field = "Sportsperson";
      description = "• Formative Soccer Expert\n• Tennis Coach Internship\n• Course in Sports Agent\n• Expert Course in Sport\n  Social Media Manager";
      image = new AssetImage('assets/images/sports.jpg');
    }
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
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
            Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                    image: widget.image,
                  ),
                ),
            ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                ),
                Column(
                  children: <Widget>[
                    Text("You are suitable to be a/an :\n",
                    style: TextStyle(
                      fontSize: 22,
                    )),
                    Text(widget.field,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text("Recommended field of study :",
                        style: TextStyle(
                          fontSize: 22,
                        ),),
                      Text(widget.description,
                        style: TextStyle(
                          fontSize: 22,
                        ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
    )
    );
  }
}