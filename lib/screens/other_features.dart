import 'package:bhuania_mart/fonts/custom_fonts.dart';
import 'package:flutter/material.dart';

class OtherFeatures extends StatefulWidget {
  const OtherFeatures({ Key? key }) : super(key: key);

  @override
  _OtherFeaturesState createState() => _OtherFeaturesState();
}

class _OtherFeaturesState extends State<OtherFeatures> {
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
            Center(child: Text("Other Features",style: CustomFonts.large(30, Colors.blue[900]!),)),
          ],
        ),
      );
  }

}