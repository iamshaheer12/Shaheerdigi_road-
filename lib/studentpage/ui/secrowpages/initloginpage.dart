import 'package:flutter/material.dart';
import '../../../color.dart';
import '../widget/button.dart';

class initloginpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _initloginpagestate();
  }
}
class _initloginpagestate extends State<initloginpage>{
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
   return Scaffold(
     body: ListView(
       children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Container(
               margin: EdgeInsets.only(left: screensize.width*0.049),
               child: Image.asset('images/qrcode.png'),
             ),
             Container(
               margin: EdgeInsets.only(right: screensize.width*0.049),
               child: Image.asset('images/settingicons.png'),
             ),
           ],
         ),
         SizedBox(height: screensize.height*0.1,),
         Container(
          // margin: EdgeInsets.only(left: screensize.width*0.1),
           child:  Align(
             alignment: AlignmentDirectional.center,
             child:  Text('Welcome back!',
               style: TextStyle(
                   fontFamily: 'Satoshi-Medium',
                   color: Colors.black,
                   fontWeight:FontWeight.w700,
                   fontSize: 24
               ),
             ) ,
           ),
         ),
         SizedBox(height: screensize.height*0.001,),
         Center(
           child: Container(
             width: 84,
             height: 81,
             decoration: BoxDecoration(
               color: splashgragy,
               borderRadius: BorderRadius.circular(100)
             ),
           ),
         ),
         SizedBox(height: screensize.height*0.001,),
         Container(
           // margin: EdgeInsets.only(left: screensize.width*0.1),
           child:  Align(
             alignment: AlignmentDirectional.center,
             child:  Text('First Name',
               style:TextStyle(
                   fontFamily: 'Satoshi-Medium',
                   color: Colors.black,
                   fontWeight:FontWeight.w700,
                   fontSize: 24
               ),
             ) ,
           ),
         ),
         SizedBox(height: screensize.height*0.3,),
         Center(
           child:Butn(txt: 'Log in with Face ID',color: splashgragy,btnhight: 49,
               fontwiew: FontWeight.w400,Size: 14
               ,marginbottom: 15,marginleft: 10,marginright: 10,margintop: 15
               ,btnwidth: screensize.width*0.85,color2:splashgragy,
               pageroute:initloginpage() ,
               dosomething: (){
               },
             colorbtntxt: Colors.black,radvalue: 15),
         ),
         Container(
           // margin: EdgeInsets.only(left: screensize.width*0.1),
           child:  Align(
             alignment: AlignmentDirectional.center,
             child:  Text('Log in with identification code',
               style:TextStyle(
                   fontFamily: 'Satoshi-Medium',
                   color: Colors.black,
                   fontWeight:FontWeight.w700,
                   fontSize: 16
               ),
             ) ,
           ),
         ),
       ],
     ),
   );
  }

}