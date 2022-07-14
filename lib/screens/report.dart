import 'package:bhuania_mart/fonts/custom_fonts.dart';
import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  const Report({ Key? key }) : super(key: key);

  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  double width = 0.0;
  double height = 0.0;
  List<Map> products = [
    {
      "id":10001,
      "name":"Product 1",
      "price":"500",
      "availability":true
    },
    {
      "id":20001,
      "name":"Product 2",
      "price":"500",
      "availability":true
    },
    {
      "id":30001,
      "name":"Product 3",
      "price":"500",
      "availability":true
    },
    {
      "id":40001,
      "name":"Product 4",
      "price":"500",
      "availability":true
    },
    {
      "id":50001,
      "name":"Product 5",
      "price":"500",
      "availability":true
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            productList1(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:25.0, horizontal:20),
              child: Text("Stock Report",style: CustomFonts.large(30, Colors.blue[900]!),),
            ),
            reportTable(),
            SizedBox(height: 50,)
          ],
        ),
      );
  }

     Widget productGrid(){
    return GridView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 250,
                            childAspectRatio: 1,
                            crossAxisSpacing: 0.2,
                            mainAxisSpacing: 0.2),
              itemCount: 4,
              itemBuilder: (context, index){
                              return Center(
                                child: Container(
                                  width: 170,
                                  height: 170,
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          width: 170,
                                          height: 110,
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
                                            ]
                                          ),
                                          child: Column(
                                            children: [
                                              SizedBox(height: 63,),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal:8.0),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Chlorox", style: CustomFonts.large(15, Colors.blue[700]!),),
                                                        SizedBox(height: 3,),
                                                        Text("Hand Sanitizer", style: CustomFonts.large(13, Colors.blue[700]!),)
                                                      ],
                                                    ),
                                                    Text("₹ 500", style: CustomFonts.large(14, Colors.amber[700]!),)
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          width: 158,
                                          height: 120,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                             image: DecorationImage(
                                                image: NetworkImage('https://m.media-amazon.com/images/I/61hwtkC4oSL._SL1200_.jpg'),
                                                fit: BoxFit.fill,
                                              ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            });
  }

    Widget productList1(){
    return ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index){
                              return Padding(
                                padding: const EdgeInsets.symmetric(vertical:15.0, horizontal:20),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 110,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.blue[100]!,
                                                    offset: const Offset(0.0,5.0,),
                                                    blurRadius: 5.0,
                                                    spreadRadius: 2.0,
                                                  ), //B
                                              ],
                                         image: DecorationImage(
                                            image: NetworkImage('https://m.media-amazon.com/images/I/61hwtkC4oSL._SL1200_.jpg'),
                                            fit: BoxFit.fill,
                                          ),
                                      ),
                                    ),
                                    SizedBox(width: 20,),
                                    Container(
                                      width: 120,
                                      height: 100,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                             Text("Chlorox", style: CustomFonts.large(20, Colors.blue[700]!),),
                                             SizedBox(height: 3,),
                                             Text("Hand Sanitizer", style: CustomFonts.large(16, Colors.blue[700]!),),
                                             SizedBox(height: 9,),
                                             Text("₹ 500", style: CustomFonts.large(20, Colors.amber[700]!),)
                                            ],
                                       ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Row(
                                      children:[
                                        Container(
                                        width: 32,
                                        height: 32,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10),topLeft: Radius.circular(10)),
                                          border: Border.all(width: 1,color: Colors.blue[200]!)
                                        ),
                                        child: Center(
                                          child: Icon(Icons.remove,color: Colors.blue,),
                                        ),
                                       ),
                                       Container(
                                        width: 40,
                                        height: 32,
                                        decoration: BoxDecoration(
                                          border: Border.all(width: 1,color: Colors.blue[200]!)
                                        ),
                                        child: Center(
                                          child: Text("10",style: TextStyle(fontSize: 20,color:Colors.blue[500],fontWeight: FontWeight.w500),),
                                        ),
                                       ),
                                       Container(
                                        width: 32,
                                        height: 32,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(bottomRight:Radius.circular(10),topRight: Radius.circular(10)),
                                          border: Border.all(width: 1,color: Colors.blue[200]!)
                                        ),
                                        child: Center(
                                          child: Icon(Icons.add,color: Colors.blue,),
                                        ),
                                       ),
                                      ]
                                      
                                    )
                                  ],
                                ),
                              );
                            });
  }

  Widget reportTable(){
    return Padding(
              padding: EdgeInsets.symmetric(horizontal:10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                                 color: Colors.blue[500]!,
                                 offset: const Offset(0.0,5.0,), 
                                 blurRadius: 5.0,
                                 spreadRadius: 2.0,
                                 ), //B
                  ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal:8.0),
                            child: Center(child: Text("Product Name",style: CustomFonts.large(14, Colors.amber),)),
                          )),
                          Container(
                            width: 90,
                            child: Center(child: Text("Product ID",style: CustomFonts.large(14, Colors.amber),))),
                          Container(
                            width: 60,
                            child: Center(child: Text("Price",style: CustomFonts.large(14, Colors.amber),))),
                          Container(
                            width: 100,
                            child: Center(child: Text("Stock Status",style: CustomFonts.large(14, Colors.amber),))),
                        ],
                      ),
                    ),
                    ListView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: products.length,
                      itemBuilder: (context,index){
                        return Container(
                      height: 50,
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal:8.0),
                            child: Center(child: Text(products[index]['name'],style: CustomFonts.medium(14, Colors.blue[900]!),)),
                          )),
                          Container(
                            width: 90,
                            child: Center(child: Text(products[index]['id'].toString(),style: CustomFonts.medium(14, Colors.blue[900]!),))),
                          Container(
                            width: 60,
                            child: Center(child: Text(products[index]['price'],style: CustomFonts.medium(14, Colors.blue[900]!),))),
                          Container(
                            width: 100,
                            child: Center(child: (products[index]['availability']==true)? Text("In Stock",style: CustomFonts.medium(14, Colors.blue[900]!),):Text("Out of Stock",style: CustomFonts.medium(14, Colors.blue[900]!),))),
                        ],
                      ),
                    );
                      }),
                  ],
                ),
              ),
            );
  }
}