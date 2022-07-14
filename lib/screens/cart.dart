import 'package:bhuania_mart/fonts/custom_fonts.dart';
import 'package:bhuania_mart/screens/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({ Key? key }) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  double width = 0.0;
  double height = 0.0;
  List<Map> products = [
    {
      "name":"Product 1",
      "price":50,
      "image":"https://5.imimg.com/data5/LW/GN/MY-4990337/bath-soap-500x500.jpg"
    },
    {
      "name":"Product 2",
      "price":550,
      "image":"https://media.istockphoto.com/photos/generic-toothpaste-isolated-on-white-picture-id172478370?b=1&k=20&m=172478370&s=170667a&w=0&h=01nz_OqLtUkt8yE-pKp2Z_j3OSQ8PdRQNTFQD8onu_I="
    },
    {
      "name":"Product 3",
      "price":150,
      "image":"https://m.media-amazon.com/images/I/61OZNxFaxFL._SY450_.jpg"
    },
    {
      "name":"Product 4",
      "price":250,
      "image":"https://media.istockphoto.com/photos/detergent-powder-washing-powder-detergent-picture-id590146468"
    }
  ];
  
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("My Cart",style: CustomFonts.large(20, Colors.blue[900]!),),
        leading: IconButton(
         icon: Icon(Icons.arrow_back, color: Colors.blue[900]), // set your color here
         onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
    },
  ),
      ),
      body: Column(
        children: [
          button(),
          list(),
          bottom()
        ],
      ),
    );
  }

  Widget button(){
    return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Container(
                width: width/1.5,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                       color: Colors.grey[500]!,
                       offset: const Offset(5.0,5.0,), 
                       blurRadius: 5.0,
                       spreadRadius: 2.0,
                      ),
                  ]
                ),
                child:Center(child: Text(
                  "Clear all Product",
                  style: CustomFonts.large(25, Colors.white),
                ),)
              ),
            ),
          );
  }

  Widget list(){
    return Expanded(
            child: Container(
              width: width,
              height: height/1.5,
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: width/1.2,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                         color: Colors.grey[500]!,
                         offset: const Offset(0.0,1.0,), 
                         blurRadius: 5.0,
                         spreadRadius: 2.0,
                        ),
                      ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10.0),
                      child: Row(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              image: DecorationImage(
                                image: NetworkImage(products[index]['image']),
                                fit: BoxFit.fill
                                ),
                              borderRadius: BorderRadius.circular(100)
                            ),
                          ),
                          SizedBox(
                            width:10
                          ),
                          Container(
                            width: 160,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(products[index]['name'],style: CustomFonts.large(22, Colors.grey[600]!),),
                                Text("Price per 1 pack : ${products[index]['price']}",style: CustomFonts.medium(15, Colors.grey[600]!),),
                                Text("RS ${products[index]['price']}",style: CustomFonts.large(17, Colors.grey[600]!),)
                              ],
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 90,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        border:Border.all(),
                                        borderRadius: BorderRadius.circular(100)
                                      ),
                                      child: Icon(Icons.remove),
                                    ),
                                    Text("1",style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        border:Border.all(),
                                        borderRadius: BorderRadius.circular(100)
                                      ),
                                      child: Icon(Icons.add),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                child: Center(
                                  child: Text("UPDATE",style: CustomFonts.large(14, Colors.white),),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          );
  }

  Widget bottom(){
    return Container(
            width: width,
            height: 120,
            child:Stack(
              children:[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Total",style: CustomFonts.large(24, Colors.black),)),
                ),
                 Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: Align(
                    alignment: Alignment.topRight,
                    child: Text("RS 2000",style: CustomFonts.large(24, Colors.black),)),
                 ),
                Padding(
                  padding: const EdgeInsets.only(bottom:15.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                  width: width/1.3,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                         color: Colors.grey[500]!,
                         offset: const Offset(5.0,5.0,), 
                         blurRadius: 5.0,
                         spreadRadius: 2.0,
                        ),
                    ],
                    gradient: LinearGradient(
                     colors: [Colors.blue[900]!, Colors.blue])
                  ),
                  child:Center(child: Text(
                    "Place Order",
                    style: CustomFonts.large(25, Colors.white),
                  ),)
              ),
                  ),
                )
              ]
            )
          );
  }

}