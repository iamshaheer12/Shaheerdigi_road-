import 'package:flutter/material.dart';

import '../../color.dart';
import 'adminotp.dart';

///SocietyEmail
class SocietyEmail extends StatefulWidget{
  var structure='';
  SocietyEmail({required this.structure});
  @override
  State<StatefulWidget> createState() {
  return _societyEmailstate(structure: this.structure);
  }}
class _societyEmailstate extends State<SocietyEmail>{
  var structure='';
  TextEditingController email=new TextEditingController();
  _societyEmailstate({required this.structure});
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
       body: ListView(
         children: [
           SizedBox(height: screensize.height*0.003,),
           Container(
             alignment: AlignmentDirectional.topStart,
             margin: EdgeInsets.only(left: screensize.width*0.05,top: 15),
             child: InkWell(
                 onTap: (){
                   Navigator.pop(context);
                 },
                 child: Image.asset('images/mvc/coloredbackarrow.png')),
           ),
           SizedBox(height: screensize.height*0.026,),
           Column(children: [
             Container(
               margin: EdgeInsets.only(left: screensize.width*0.04),
               child:  Align(
                 alignment: AlignmentDirectional.topStart,
                 child:  Text('What’s your ${structure}',
                   style: TextStyle(
                       fontFamily: 'Satoshi-Medium',
                       color: Colors.black,
                       fontWeight:FontWeight.w700,
                       fontSize: 28
                   ),
                 ),
               ),
             ),
             Container(
               margin: EdgeInsets.only(left: screensize.width*0.04),
               child:  Align(
                 alignment: AlignmentDirectional.topStart,
                 child:  Text(' Email?',
                   style: TextStyle(
                       fontFamily: 'Satoshi-Medium',

                       color: Colors.black,
                       fontWeight:FontWeight.w700,
                       fontSize: 28
                   ),
                 ),
               ),
             ),
           ],),
           SizedBox(height: screensize.height*0.0039,),
           Align(
             alignment: AlignmentDirectional.topStart,
             child: Container(
               margin: EdgeInsets.only(left:screensize.width*0.04,right:screensize.width*0.04
               ),
               child: Text('We will use your email to verify your student status and if you need to reset your password.',
                 style: TextStyle(
                     fontFamily: 'Satoshi-Medium',
                     color: event2colors,
                     fontWeight:FontWeight.w500,
                     fontSize: 13
                 ),
               ),
             ),
           ),
           SizedBox(height: screensize.height*0.029,),
           Container(
            height: 60,
             width: screensize.width*0.7,
             margin: EdgeInsets.only(right: 20,left: 20,top: 10),
             decoration: BoxDecoration(
                 border: Border.all(width: 0.1,color: Colors.black),
                 shape: BoxShape.rectangle,
               borderRadius: BorderRadius.circular(5)
             ),
             child: TextField(
               textAlign: TextAlign.left,
               controller: email,
               decoration: InputDecoration(
                   border: InputBorder.none,
                   focusedBorder: InputBorder.none,
                   enabledBorder: InputBorder.none,
                   errorBorder: InputBorder.none,
                   disabledBorder: InputBorder.none,
                   contentPadding: EdgeInsets.only(left: 15,top: 15),
                   hintText:  '   Email address',
                   hintStyle: TextStyle(
                     fontFamily: 'Satoshi-Variable',
                     color:adidaslogocfdolors,
                     fontWeight:FontWeight.w400,
                     fontSize: 13,
                   )
               ),
             ),
           ),
           SizedBox(
             height: screensize.height*0.54,
           ),
           ///event horizen
           Container(
             margin: EdgeInsets.only(right: 15,left:15
                 ,top: 15,bottom:15),
             height:48,
             width: screensize.width,
             decoration: BoxDecoration(
                 color: splashcolor,
                 border: Border.all(
                   color: splashcolor,
                   width:1,
                 ),
                 borderRadius: BorderRadius.all(Radius.circular(5))
             ),
             child: ElevatedButton(onPressed: () async{
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>
                      adminotpmvc(email: this.email,
                      structure: this.structure),));
             },
               style:ButtonStyle(
                   backgroundColor: MaterialStateProperty.all(splashcolor),
                   elevation: MaterialStateProperty.all(3)
               ),
               child: Center(
                 child: Align(
                   alignment: AlignmentDirectional.center,
                   child:   Text('Continue',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                         fontFamily: 'Satoshi-Variable',
                         color: Colors.white,
                         fontWeight:FontWeight.w100,
                         fontSize: 16
                     ),
                   ),
                 ) ,
               ),
              ///categorybestdescribes
             ),
           )
         ],
       ),
    );
  }
}