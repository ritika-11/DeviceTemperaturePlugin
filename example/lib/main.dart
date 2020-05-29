
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';
import 'package:devicetemperature/device_temperature.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _temp = "";

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initDeviceTemperature() async {
    double temp;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      temp = await Devicetemperature.DeviceTemperature;
    } catch(e) {
      temp = 0.0;
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _temp = "Current Device Temperature is " + temp.toString() + " degree Celsius";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Device Temperature'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text('$_temp'),
                  margin: EdgeInsets.all(15),
                ),
                RaisedButton(
                  child: Text("Get Device Temperature"),
                  onPressed: initDeviceTemperature,
                )
              ],
            ),
        ),
      ),
    );
  }
}
