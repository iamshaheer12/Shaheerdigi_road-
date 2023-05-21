import 'package:flutter/material.dart';

import '../../../color.dart';
class clubsprofile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _clubsprofilestate();
  }
}
 class _clubsprofilestate extends State<clubsprofile>{
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width:screensize.width,
                height: screensize.height*0.25,
                decoration: BoxDecoration(
                  color: splashgragy,
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: screensize.height*0.165
                          ,left: screensize.width*0.02),
                      child: Image.asset('images/backarrow.png',
                      ),
                    ),
                    SizedBox(width: screensize.height*0.13,),
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      child: Align(
                        child: Text('Cover Image',
                          style:TextStyle(
                              fontFamily: 'Satoshi-Medium',
                              color: Colors.black,
                              fontWeight:FontWeight.w400,
                              fontSize: 12
                          ),
                        ),
                      ),
                    ),
               ],
             )
         ),
          //accountpic.png
              Container(
              margin: EdgeInsets.only(top:
              screensize.height*0.21
             ,left: screensize.width*0.02),
              child: Image.asset('images/accountpic.png',
                ),
              ),
        ]
        ),
          SizedBox(height: screensize.height*0.06,),
        ]
         )
        );
       }
      }