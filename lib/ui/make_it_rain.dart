import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return new MakeItRainState();
  }

}

class MakeItRainState extends State<MakeItRain> {
  int moneyCounter = 0;

  void rain_Money(){
    //Important - setstate is called each time
    setState(() {
      moneyCounter = moneyCounter + 100;
    });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make it rain"),
        backgroundColor: Colors.amberAccent,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            //title
            new Center(
              child: new Text("Get rich",
                style: new TextStyle(
                    color: Colors.cyanAccent,
                    fontWeight: FontWeight.w400,
                    fontSize: 30.1
                ),),
            ),

            new Expanded(
                child: new Center(
                  child: new Text('\$$moneyCounter',
                  style: new TextStyle(
                    color: Colors.red,
                    fontSize: 45.5,
                    fontWeight: FontWeight.w900
                  ),),
                )),

            new Expanded(
              child: new Center(
                child: new FlatButton(
                    color: Colors.green,
                    textColor: Colors.cyanAccent,
                    onPressed: rain_Money,
                    child: new Text("Let it rain!",
                    style: new TextStyle(
                      fontSize: 20.0,
                      ),
                    )),
              ),
            )

          ],
        ),
      ),
    );
  }
}