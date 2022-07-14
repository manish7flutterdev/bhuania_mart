import 'package:bhuania_mart/fonts/custom_fonts.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({ Key? key }) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  var width = 0.0;
  var height = 0.0;
  List<Map> catagories = [
    {
      "name":"Product 1",
      "image":"https://media.istockphoto.com/photos/white-rice-in-sack-and-wooden-scoop-isolated-on-white-picture-id515001934?k=20&m=515001934&s=612x612&w=0&h=FdhqcWrJUzoiFPEvgJnZf4GEHVLMDZ8Cl94kWnHBWG8="
    },
    {
      "name":"Product 1",
      "image":"https://media.istockphoto.com/photos/white-rice-in-sack-and-wooden-scoop-isolated-on-white-picture-id515001934?k=20&m=515001934&s=612x612&w=0&h=FdhqcWrJUzoiFPEvgJnZf4GEHVLMDZ8Cl94kWnHBWG8="
    },
    {
      "name":"Product 1",
      "image":"https://media.istockphoto.com/photos/white-rice-in-sack-and-wooden-scoop-isolated-on-white-picture-id515001934?k=20&m=515001934&s=612x612&w=0&h=FdhqcWrJUzoiFPEvgJnZf4GEHVLMDZ8Cl94kWnHBWG8="
    },
    {
      "name":"Product 1",
      "image":"https://media.istockphoto.com/photos/white-rice-in-sack-and-wooden-scoop-isolated-on-white-picture-id515001934?k=20&m=515001934&s=612x612&w=0&h=FdhqcWrJUzoiFPEvgJnZf4GEHVLMDZ8Cl94kWnHBWG8="
    },
  ];

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          catagory(),
          SizedBox(height: 25,),
           Text("Our Products",style: CustomFonts.large(30, Colors.blue[900]!),),
           SizedBox(height: 25,),
           productGrid(),
           SizedBox(height: 25,),
          
        ],
      ),
    );
  }


  Widget catagory(){
    return Column(
      children: [
        SizedBox(height: 25,),
         Text("Catagories",style: CustomFonts.large(30, Colors.blue[900]!),),
         SizedBox(height: 25,),
         Container(
           width: width,
          height: 180,
           child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: catagories.map((e) =>
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal:15.0),
                                    child:Container(
                                                  height: 150,
                                                  width: 150,
                                                  decoration: BoxDecoration(
                                                    color:Colors.white,
                                                    borderRadius: BorderRadius.circular(20),
                                                    boxShadow: [
                                                       BoxShadow(
                                                          color: Colors.blue[200]!,
                                                          offset: const Offset(5.0,5.0,), 
                                                          blurRadius: 10.0,
                                                          spreadRadius: 2.0,
                                                      ),
                                                    ]
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(10.0),
                                                    child: Image.network(e['image'],),
                                                  ),
                                                ),
                                  ),).toList()
                                ),
    )
         )
      ],
    );
  }

       Widget productGrid(){
    return GridView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 250,
                            childAspectRatio: 0.9,
                            crossAxisSpacing: 0.2,
                            mainAxisSpacing: 0.2),
              itemCount: 4,
              itemBuilder: (context, index){
                              return Center(
                                child: Container(
                                  width: 170,
                                  height: 215,
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          width: 170,
                                          height: 120,
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
                                              SizedBox(height: 25,),
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
                                                    Text("₹ 500", style: CustomFonts.large(14, Colors.amber[700]!),),
                                                  
                                                  ],
                                                ),
                                              ),
                                              Expanded(child: SizedBox()),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal:10.0,vertical: 13),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: 95,
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Container(
                                                            height: 29,
                                                            width: 29,
                                                            decoration: BoxDecoration(
                                                              color: Colors.blue[900],
                                                              borderRadius: BorderRadius.circular(100)
                                                            ),
                                                            child: Icon(Icons.remove,color: Colors.white,),
                                                          ),
                                                           Container(
                                                            
                                                            child: Center(
                                                              child: Text("1",style: TextStyle(fontSize: 22),),
                                                            ),
                                                          ),
                                                           Container(
                                                            height: 29,
                                                            width: 29,
                                                            decoration: BoxDecoration(
                                                              color: Colors.blue[900],
                                                              borderRadius: BorderRadius.circular(100)
                                                            ),
                                                            child: Icon(Icons.add,color: Colors.white,),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(width: 20,),
                                                    Icon(Icons.add_shopping_cart,color: Colors.blue[900],size: 32,)
                                                  ],
                                                ),
                                              ),
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
}

