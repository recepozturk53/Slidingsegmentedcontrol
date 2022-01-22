import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'RecepOzturk.com',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int? _groupvalue = 0;
  int? _groupvalue1 = 0;
  int? _groupvalue2 = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      navigationBar: CupertinoNavigationBar(
        middle: Text('RecepOzturk.com'),
      ),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Container(
            width: 120.0,
            height: 160.0,
            alignment: Alignment.topCenter,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Image.asset(
              "images/fluttericon.png",
              fit: BoxFit.fitWidth,
              alignment: Alignment.center,
            ),
          ),
          new Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(
              'Flutter Training for Cupertino Sliding SegmentedControl',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 25.0,
                color: Colors.white,
              ),
            ),
          ),
          new Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(10),
            child: CupertinoSlidingSegmentedControl<int>(
              backgroundColor: CupertinoColors.white,
              thumbColor: CupertinoColors.activeGreen,
              padding: EdgeInsets.all(4),
              groupValue: _groupvalue,
              children: {
                0: Text('Men'),
                1: Text('Women'),
                2: Text('Kids'),
              },
              onValueChanged: (newValue) {
                setState(() {
                  _groupvalue = newValue;
                });
              },
            ),
          ),
          new Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(10),
            child: CupertinoSlidingSegmentedControl<int>(
              backgroundColor: CupertinoColors.systemGrey6,
              thumbColor: CupertinoColors.activeBlue,
              padding: EdgeInsets.all(4),
              groupValue: _groupvalue1,
              children: {
                0: Text('Xs'),
                1: Text('S'),
                2: Text('M'),
                3: Text('L'),
                4: Text('XL'),
                5: Text('XXL'),
              },
              onValueChanged: (newValue) {
                setState(() {
                  _groupvalue1 = newValue;
                });
              },
            ),
          ),
          new Container(
              decoration: new BoxDecoration(
                  color: CupertinoColors.systemGrey6,
                  borderRadius: new BorderRadius.all(new Radius.circular(6.0))),
              margin: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new Text(
                    "Notifications",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  new CupertinoSlidingSegmentedControl<int>(
                    backgroundColor: CupertinoColors.systemGrey2,
                    thumbColor: _groupvalue2 == 0
                        ? CupertinoColors.destructiveRed
                        : CupertinoColors.activeGreen,
                    padding: EdgeInsets.all(4),
                    groupValue: _groupvalue2,
                    children: {
                      0: Text('OFF'),
                      1: Text('ON'),
                    },
                    onValueChanged: (newValue) {
                      setState(() {
                        _groupvalue2 = newValue;
                      });
                    },
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
