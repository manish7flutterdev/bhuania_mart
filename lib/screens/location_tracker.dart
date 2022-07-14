import 'package:bhuania_mart/fonts/custom_fonts.dart';
import 'package:flutter/material.dart';

class LocationTracker extends StatefulWidget {
  const LocationTracker({ Key? key }) : super(key: key);

  @override
  _LocationTrackerState createState() => _LocationTrackerState();
}

class _LocationTrackerState extends State<LocationTracker> {
  double width = 0.0;
  double height = 0.0;
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(child: Text("Location Tracker",style: CustomFonts.large(30, Colors.blue[900]!),)),
          ],
        ),
      );
  }

}