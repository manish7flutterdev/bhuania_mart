import 'package:bhuania_mart/fonts/custom_fonts.dart';
import 'package:flutter/material.dart';

class ManageBrm extends StatefulWidget {
  const ManageBrm({ Key? key }) : super(key: key);

  @override
  _ManageBrmState createState() => _ManageBrmState();
}

class _ManageBrmState extends State<ManageBrm> {
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
            Center(child: Text("Manage BRM",style: CustomFonts.large(30, Colors.blue[900]!),)),
          ],
        ),
      );
  }

}