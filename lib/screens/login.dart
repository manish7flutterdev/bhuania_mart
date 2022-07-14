import 'package:bhuania_mart/fonts/custom_fonts.dart';
import 'package:bhuania_mart/screens/homepage.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  double width = 0.0;
  double height = 0.0;
  double statusBar = 0.0;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    statusBar = MediaQuery.of(context).padding.top;
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height:statusBar
            ),
            Container(
              width:width,
              height:height-statusBar,
              color:Colors.white,
              child: Stack(
                children:[
                   Align(
                     alignment: Alignment.topCenter,
                     child: Container(
                       width: width,
                       height: height/3,
                       color: Colors.blue[600],
                       child: Center(
                         child:Text("Lets start with Login!",style: CustomFonts.large(20, Colors.white),)
                       ),
                     ),
                   ),
                   Positioned(
                     top:  height/5,
                     child: Align(
                       alignment:Alignment.topCenter,
                       child: Container(
                         width: width,
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Container(
                               width: width/1.2,
                               height: 350,
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(20),
                                 boxShadow: [
                                   BoxShadow(
                                      color: Colors.grey[500]!,
                                      offset: const Offset(1.0,1.0,), 
                                      blurRadius: 5.0,
                                      spreadRadius: 4.0,
                                      ),
                                 ]
                               ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      textField(Icons.email,"EMAIL",_emailController),
                                      SizedBox(height: 30,),
                                      textField(Icons.vpn_key,"PASSWORD",_passwordController),
                                      SizedBox(height: 30,),
                                      GestureDetector(
                                        onTap:(){
                                          // if(_emailController.text=="email"&&_passwordController.text=="password"){
                                          //   Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
                                          // }else{
                                          //   dialogueBox("Incorrect Email and Password");
                                          // }
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
                                        },
                                        child: Container(
                                          width: width/1.45,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.blue[600],
                                            borderRadius: BorderRadius.circular(20)  
                                          ),
                                          child: Center(
                                            child: Text("Login",style: CustomFonts.large(20, Colors.white),),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text("I forgot my Password",style: CustomFonts.large(17, Colors.black),)
                                    ],
                                  ),
                             ),
                           ],
                         ),
                       ),
                     ),
                   )
                ]
              ),
            ),
          ],
        )
      ),
    );
  }


  customTextField(String heading, IconData icon,TextEditingController controller){
    return Padding(
             padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 10),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 Icon(icon,size: 40,),
                 SizedBox(width: 20,),
                 Container(
                   width: width/1.4,
                   child: TextField(
                     controller: controller,
                     decoration: InputDecoration(labelText: heading,labelStyle: CustomFonts.large(20, Colors.blue[900]!))
                   ),
                 ),
               ],
             ),
           );
  }

  textField(IconData icon, String heading,TextEditingController controller){
    return Container(
                  width: width/1.45,
                  height: 50,
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey[400]!,
                      width: 1
                    )
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                       Icon(icon,size: 30,),
                       SizedBox(width: 20,),
                       Expanded(
                         child: Container(
                          child: TextField(
                           controller: controller,
                           decoration: InputDecoration(
                             hintText: heading,
                             hintStyle: CustomFonts.large(15, Colors.grey),
                             border: InputBorder.none,))
                                          ),
                       ),
               
                    ],
                  ),
                 );
  }


  dialogueBox(String text){
     showDialog(  
        context: context,  
        builder: (context) {  
          return AlertDialog(  
            title: Text(text), 
            actions: <Widget>[  
              new FlatButton(  
                child: new Text('OK',style: CustomFonts.large(20, Colors.blue),),  
                onPressed: () {  
                  Navigator.of(context).pop();  
                },  
              )  
            ],  
          );  
        });
  }
}