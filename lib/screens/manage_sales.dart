import 'package:bhuania_mart/fonts/custom_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ManageSales extends StatefulWidget {
  const ManageSales({ Key? key }) : super(key: key);

  @override
  _ManageSalesState createState() => _ManageSalesState();
}

class _ManageSalesState extends State<ManageSales> {
  double width = 0.0;
  double height = 0.0;
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  card(Icons.person,"Today's visitor",4442.toString(),23),
                  card(Icons.notifications,"Product Sold Today","2442 pcs",5),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  card(Icons.shopping_basket,"Total Order","242 pcs",3),
                  card(Icons.money,"Today's Income","₹ 2442",2),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:25.0, horizontal:20),
              child: Text("Sales Summary",style: CustomFonts.large(30, Colors.blue[900]!),),
            ),
          ],
        ),
      );
  }

Widget card(IconData icon,String main, String figure, int percent){
  return Container(
                  width: 180,
                  height: 125,
                  decoration: BoxDecoration(
                            color: Colors.white,
                             borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                              BoxShadow(
                                color: Colors.blue[100]!,
                                offset: const Offset(0.0,5.0,),
                                blurRadius: 5.0,
                                spreadRadius: 2.0,
                              ), //B
                            ],
                      ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(100)
                            ),
                            child: Icon(icon,size: 30,),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            width: 200,
                            height: 40,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(main,style: CustomFonts.large(14, Colors.blue[900]!),),
                                SizedBox(height: 2,),
                                Text(figure.toString(),style: TextStyle(
                                  fontSize: 17,color: Colors.blue[900],fontWeight: FontWeight.w600
                                ),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.all(13),
                          child: Container(
                            width: 70,
                            height: 50,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.arrow_upward,color: Colors.amber, size: 25,),
                                    Text("$percent %", style: TextStyle(
                                      letterSpacing: 0.30,
                                      color: Colors.amber,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600
                                    ),)
                                  ],
                                ),
                                SizedBox(height: 3,),
                                Text("This Week",style: CustomFonts.medium(13, Colors.grey[400]!),)
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
}

}