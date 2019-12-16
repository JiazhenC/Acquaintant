import 'package:flutter/material.dart';
import 'main.dart';
import 'package:parallax_image/parallax_image.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:image_downloader/image_downloader.dart';

int counter = -1;

class View_Fair extends StatelessWidget {
  Fair temp = new Fair();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "EduFairs",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: ListView.separated(
        itemCount: temp.get_length(),
        itemBuilder: (BuildContext context, int index) {
          return new GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Fair_page(index, temp)),
              );
            },
            child: Container(
              padding: EdgeInsets.all(5),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Card(
                  child: Row(
                    children: <Widget>[
                      new Center(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
                          child: Image(
                            image: AssetImage(
                              'assets/images/Logo.png',
                            ),
                            width: 100,
                          ),
                        ),
                      ),
                      new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Align(
                              child: Text(temp.get_name(index)),
                              alignment: Alignment.center,
                              heightFactor: 2.5,
                            ),
                            new Align(
                              child: Text(temp.get_date(index)),
                              alignment: Alignment.center,
                              heightFactor: 2.5,
                            ),
                            new Align(
                              child: Text(temp.get_location(index)),
                              alignment: Alignment.center,
                              heightFactor: 2.5,
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}

class Fair_page extends StatelessWidget {
  int index;
  Fair temp;

  Fair_page(int index, Fair temp) {
    this.index = index;
    this.temp = temp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            temp.get_name(index),
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
        ),
        body: GridView.count(
          crossAxisCount: 1,
          children: <Widget>[
            new Container(child: Image(image: temp.get_fair_image(index))),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Text(
                  "Welcome to " + temp.get_name(index),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                ),
                new Text(
                  "\nDate : " + temp.get_date(index),
                ),
                new Text("\nTime : " + temp.get_time(index)),
                new Text("\nLocation : " + temp.get_location(index)),
                new Text("\nAddress : \n" + temp.get_addr(index)),
                new Padding(
                  padding: EdgeInsets.all(12),
                ),
              ],
            ),
            new Column(
              children: <Widget>[
                new Text(
                  "\nBooth of Universities",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                ),
                new Container(
                  constraints: BoxConstraints(maxHeight: 80),
                  child: new ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index2) {
                        if (counter == temp.get_uni_length(index) - 1) {
                          counter = 0;
                        } else
                          counter++;
                        return new Container(
                          padding: EdgeInsets.all(2),
                          child: new ParallaxImage(
                              image: temp.get_uni_image(index, counter),
                              extent: 100),
                        );
                      }),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                new Text(
                  "Google Map",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                ),
                new RaisedButton(onPressed: _launchURL),
                new Text(
                  "Interior Map",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                ),
                new RaisedButton(onPressed: _downloadMAP),
              ],
            ),
          ],
        ));
  }

  List<String> _url = [
    "https://goo.gl/maps/1vcbyCnob1mU7kfV6",
    "https://goo.gl/maps/VxfaNASFcViYaG9U8"
    ];

  _launchURL() async {
    String url = _url[index];
    print(index);
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  List<String> _url2 = [
    "https://raw.githubusercontent.com/jsadjad/Acquaintant/master/map.jpg",
    "https://raw.githubusercontent.com/jsadjad/Acquaintant/master/map.jpg"
  ];

  _downloadMAP() async {
    await ImageDownloader.downloadImage(_url2[index]);
  }
}

class Fair {
  List<AssetImage> _fair_image = [
    AssetImage('assets/images/Logo.png'),
    AssetImage("assets/images/event1.jpg")
  ];
  List<List<AssetImage>> _uni_image = [
    [AssetImage('assets/uni/Uni.jpg'), AssetImage('assets/uni/Uni2.png')],
    [AssetImage("assets/uni/Uni2.png"), AssetImage('assets/uni/Uni3.png')]
  ];
  List<List<AssetImage>> _event_image = [
    [
      AssetImage('assets/images/event.jpg'),
      AssetImage('assets/images/event1.jpg')
    ],
    [
      AssetImage("assets/images/event.jpg"),
      AssetImage('assets/images/event1.jpg')
    ]
  ];
  List<String> _name = ["Facon Education Fair", "Fair2"],
      _date = ["SAT 2/2/2020 - MON 4/2/2020", "SAT 8/8/2020 - WED 12/8/2020"],
      _location = ["Kuala Lumpur Convention Centre", "MidValley"],
      _addr = [
    "Kuala Lumpur Convention Centre\nJalan Pinang, Kuala Lumpur City Centre, \n50088 Wilayah Persekutuan, \nWilayah Persekutuan Kuala LumpurKuala Lumpur, \nKuala Lumpur 50088\nMalaysia ",
    "The Mall, Mid Valley Southkey, \nNo. 1, Persiaran Southkey 1, Kota Southkey, \n80150 Johor Bahru, Johor, \nMalaysia"
  ],
      _time = ["12:00 PM - 6:00 PM", "10:00 PM - 6:00 PM"];

  AssetImage get_fair_image(index) {
    return _fair_image[index];
  }

  int get_length() {
    return _name.length;
  }

  int get_uni_length(index) {
    return _uni_image[index].length;
  }

  AssetImage get_uni_image(index, index2) {
    return _uni_image[index][index2];
  }

  int get_event_length(index) {
    return _event_image[index].length;
  }

  AssetImage get_event_image(index, index2) {
    return _event_image[index][index2];
  }

  String get_name(index) {
    return _name[index];
  }

  String get_date(index) {
    return _date[index];
  }

  String get_addr(index) {
    return _addr[index];
  }

  String get_time(index) {
    return _time[index];
  }

  String get_location(index) {
    return _location[index];
  }
}
