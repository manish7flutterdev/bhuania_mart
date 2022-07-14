import 'package:bhuania_mart/fonts/custom_fonts.dart';
import 'package:bhuania_mart/screens/cart.dart';
import 'package:bhuania_mart/screens/dashboard.dart';
import 'package:bhuania_mart/screens/location_tracker.dart';
import 'package:bhuania_mart/screens/manage_brm.dart';
import 'package:bhuania_mart/screens/manage_sales.dart';
import 'package:bhuania_mart/screens/other_features.dart';
import 'package:bhuania_mart/screens/product_page.dart';
import 'package:bhuania_mart/screens/report.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  double width = 0.0;
  double height = 0.0;
  double topPadding = 0.0;
  int pageIndex = 10;

  List<Map> menu = [
    {
      "name":"Dashboards",
      "img":"url",
      "state":true,
    },
    {
      "name":"Manage Sales",
      "img":"url",
      "state":false,
    },
    {
      "name":"Manage BRM",
      "img":"url",
      "state":false,
    },
    {
      "name":"Reports",
      "img":"url",
      "state":false,
    },
    {
      "name":"Other Features",
      "img":"url",
      "state":false,
    },
    {
      "name":"Location Tracker",
      "img":"url",
      "state":false,
    },
    {
      "name":"Logout",
      "img":"url",
      "state":false,
    },
  ];
  
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    topPadding = MediaQuery.of(context).padding.top;
    return Scaffold(
      key: _key,
      drawer: drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
         icon: Icon(Icons.menu, color: Colors.blue[900]), // set your color here
         onPressed: () {
          _key.currentState!.openDrawer();
    },
  ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.search,
              size:30,
              color:Colors.blue[900]
              ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.notifications,
              size:30,
              color:Colors.blue[900]
              ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
              },
              child: Icon(
                Icons.shopping_basket,
                size:30,
                color:Colors.blue[900]
                ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: renderPage()
    );
  }

 

  Widget drawer(){
    return Container(
      width: 300,
      height: height,
      child: Column(
        children: [
          SizedBox(
            height: topPadding,
          ),
          Container(
            width: 300,
            height: 170,
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.only(left : 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.blue[900],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Full Name",style: CustomFonts.medium(17, Colors.black),),
                  SizedBox(
                    height: 8,
                  ),
                  Text("Email Address",style: CustomFonts.medium(17, Colors.black),)
                ],
              ),
            ),
          ),
          Container(
            width: 300,
            height: height-170-topPadding,
            color: Colors.white,
            child: ListView.builder(
              itemCount: menu.length,
              itemBuilder: (context,index){
              return Container(
                decoration: BoxDecoration(
                  color:(menu[index]['state'])?Colors.blue:Colors.white
                ),
                child: ListTile(
                  tileColor: Colors.red,
                  onTap: (){
                    changeState(menu[index]['name'],index);
                      Navigator.pop(context);
                  },
                  title:Text(menu[index]['name'],style:CustomFonts.large(20, menu[index]['state']?Colors.white:Colors.black)),
                  leading: Icon(Icons.edit),
                ),
              );
            }),
          )
        ],
      ),
    );
  }

  
  changeState(String name,int index){
    for(int i = 0; i< menu.length ; i++){
      if(name==menu[i]['name']){
        menu[i]['state']=true;
      }else{
        menu[i]['state']=false;
      }
    }
    pageIndex = index;
    setState(() {
      
    });
  }

 renderPage(){
    if(pageIndex==0){
      return ProductPage();
    }else if(pageIndex==1){
      return ManageSales();
    }else if(pageIndex==2){
      return ManageBrm();
    }else if(pageIndex==3){
      return Report();
    }else if(pageIndex==4){
      return OtherFeatures();
    }else if(pageIndex==5){
      return LocationTracker();
    }else{
    return ProductPage();
    }
  }

}

