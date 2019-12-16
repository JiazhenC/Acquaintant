import 'package:flutter/material.dart';
import 'view_fair.dart';
import 'profiling_survey.dart';


void main() {
  runApp(MaterialApp(
      home: Main_menu()
  )
  );
}

class Main_menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.1,0.3,0.5,0.8,0.9],
                colors: [
                  Colors.blue[500],
                  Colors.blue[200],
                  Colors.blue[300],
                  Colors.blue[400],
                  Colors.blue[500],
                ]
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Image(
                  image: AssetImage('assets/images/Logo.png'),
                  width: 100,
                ),
                new Padding(padding: EdgeInsets.all(60)),
                Column(
                  children: [
                    ButtonTheme(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      buttonColor: Colors.white,
                      minWidth: 200,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> View_Fair()),
                          );
                        },
                        child: Text("View Fair"),
                      ),
                    ),
                    ButtonTheme(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                        buttonColor: Colors.white,
                        minWidth: 200,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context)=> MySurvey()),
                            );
                          },
                          child: Text("Student Profiling Survey"),
                        )
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}
