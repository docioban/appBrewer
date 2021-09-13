import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../services/weather.dart';
import 'location_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getCurrentData() async {
    var data = await WeatherModel().getCurrentData();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        data: data,
      );
    }));
  }

  @override
  void initState() {
    super.initState();
    getCurrentData();
  }

  @override
  Widget build(BuildContext context) {
    // getData();
    return Scaffold(
      body: Center(
        child: SpinKitPouringHourglass(
          color: Colors.white,
          size: 100.0,
          duration: Duration(milliseconds: 1000),
        ),
      ),
    );
  }
}
