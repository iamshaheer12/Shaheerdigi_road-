import 'package:flutter/material.dart';
import '../../../color.dart';
class countrycodewidbuild extends StatelessWidget {
  String mainimg="continue";
  String flogoimg="continue";
  String seclogoimg="continue";
  var text1='';
  var text2='';
  var pageroute;
  countrycodewidbuild({required this.mainimg,
    required this.flogoimg,
    required this.seclogoimg,
    required this.text1,
    required this.text2,
    required this.pageroute,
  });
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: 33,
          height: 31,
          margin: EdgeInsets.only(left: 17),
          decoration: BoxDecoration(
            color: splashgragy,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(child: Image.asset('images/mvc/$mainimg')),
        ),
       Column(
         children: [
           Row(children: [
             Container(
               width: 14,
               height: 14,
               margin: EdgeInsets.only(left: 17,top: 10),
               decoration: BoxDecoration(
                 color: splashgragy,
                 borderRadius: BorderRadius.circular(100),
               ),
               child: Center(child: Image.asset('images/mvc/$flogoimg')),
             ),
             Align(
               alignment: AlignmentDirectional.topStart,
               child:Container(
                 margin: EdgeInsets.only(left: screensize.width*0.01,
                 ),
                 child:  Text(text1,
                   style:TextStyle(
                       fontFamily: 'Satoshi-Medium',
                       color: Colors.black,
                       fontWeight:FontWeight.w400,
                       fontSize: 16
                   ),
                 ),
               ),
             ),
           ],),
           Row(children: [
             Container(
               width: 14,
               height: 14,
               margin: EdgeInsets.only(left: 17),
               decoration: BoxDecoration(
                 color: splashgragy,
                 borderRadius: BorderRadius.circular(100),
               ),
               child: Center(child: Image.asset('images/mvc/$seclogoimg')),
             ),
             Align(
               alignment: AlignmentDirectional.topStart,
               child:Container(
                 margin: EdgeInsets.only(left: screensize.width*0.01,
                 ),
                 child:  Text(text2,
                   style: TextStyle(
                       fontFamily: 'Satoshi-Medium',
                       color: Colors.black,
                       fontWeight:FontWeight.w400,
                       fontSize: 16
                   ),
                 ),
               ),
             ),
           ],)
         ],
       )
      ],
    );
  }
}