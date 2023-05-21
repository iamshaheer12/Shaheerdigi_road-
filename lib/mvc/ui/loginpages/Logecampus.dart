import 'package:ecampus/mvc/ui/loginpages/email-5.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../color.dart';
import '../SignUpPages/otp-email-3.dart';
import 'loginphonecampus.dart';
///Logecampus.dart
class Logecampus extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _Logecampusstate();
  }
}
class _Logecampusstate extends State<Logecampus>{
  var docsvalue;
  bool ispasscodetrue=false;
  List datalst=[];
  var comnumb;
  var gender='';
  TextEditingController email=new TextEditingController();

  int topbarselection=1;
  
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
   return Scaffold(
     body: ListView(
       children: [
         SizedBox(height: screensize.height*0.03,),
         Container(
           width: screensize.width,
           height: 50,
           margin: EdgeInsets.only(right: 15,left: 15),
           decoration: BoxDecoration(
             // border: Border.all(width: 1),
               borderRadius: BorderRadius.all(Radius.circular(30)),
               color: otbcolor
           ),
           child:Row(
             children: [
               InkWell(
                 onTap:(){
                   setState(() {
                     topbarselection=1;
                   });
                   Navigator.push(context, MaterialPageRoute(builder:
                       (context) => Logecampus(),));
                 }
                 ,child: Container(
                 width: screensize.width*0.45,
                 height: 50,
                 margin: EdgeInsets.only(right: 2,left: 0),
                 decoration: BoxDecoration(

                     border: topbarselection==1?Border.all(width: 1):Border.all(width: 0
                         ,color: otbcolor),
                     borderRadius: BorderRadius.all(Radius.circular(30)),
                     color: topbarselection==1?Colors.white:
                     otbcolor),
                 child: Align(
                   alignment: AlignmentDirectional.center,
                   child:  Text('Phone number',
                     style: TextStyle(
                         fontFamily: 'Satoshi-Variable',
                         color: Colors.black,
                         fontWeight:FontWeight.w700,
                         fontSize: 13
                     ),
                   ) ,
                 ),
               ),
               ),
               InkWell(
                 onTap: (){

                   setState(() {
                     topbarselection=2;
                     Navigator.push(context, MaterialPageRoute(builder:
                         (context) => loginphonecampus(),));
                     topbarselection=2;
                   });

                 },
                 child: Container(
                   width: screensize.width*0.45,
                   height: 50,
                   margin: EdgeInsets.only(right: 0,left: 2),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(30)),
                     color: topbarselection==2?Colors.white:
                     otbcolor,
                     border: topbarselection==2?Border.all(width: 1):Border.all(width: 0
                         ,color: otbcolor),
                   ),
                   child: Align(
                     alignment: AlignmentDirectional.center,
                     child:  Text('Email',
                       style: TextStyle(
                           fontFamily: 'Satoshi-Variable',
                           color: Colors.black,
                           fontWeight:FontWeight.w700,
                           fontSize: 13
                       ),
                     ) ,
                   ),
                 ),
               )
             ],
           ),
         ),
         SizedBox(height: screensize.height*0.03,),
         Card(
             margin: EdgeInsets.only(right: screensize.width*0.05,
                 left: screensize.width*0.05),
             elevation: 2,
             child: Container(
                 width: screensize.width*0.8,
                 height: 64,
                 decoration: BoxDecoration(
                     color: Colors.white
                 ),
                 child:Container(
                   child: IntlPhoneField(
                     flagsButtonMargin: EdgeInsets.only(top: 25),
                     showCursor: true,
                     autofocus: true,
                     autovalidateMode:AutovalidateMode.values.first,

                     textAlignVertical: TextAlignVertical.bottom,
                     decoration: InputDecoration(
                         border: InputBorder.none,
                         focusedBorder: InputBorder.none,
                         enabledBorder: InputBorder.none,
                         errorBorder: InputBorder.none,
                         disabledBorder: InputBorder.none,
                         contentPadding: EdgeInsets.only(left: 2),
                         hintText:  'Mobile number',
                         hintStyle: TextStyle(
                           fontFamily: 'Satoshi-Medium',
                           color:Colors.black,
                           fontWeight:FontWeight.w400,
                           fontSize: 13,
                         )
                     ),
                     onChanged: (phone){
                       print(phone.completeNumber);
                       

                     },
                     onSaved: (phone){
                       

                     },
                     onCountryChanged: (country) {
                       print('Country changed to: ' + country.name);
                     },
                     onTap: (){
                       
                     },
                   ),
                 )
             )
         ),//5 contianer
         SizedBox(height: screensize.height*0.63,),
         Center(
             child: Container(
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
               child: ElevatedButton(onPressed: (){
                 
                 Navigator.push(context,
                     MaterialPageRoute(builder: (context) =>email_5()
                     ));
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

               ),
             )
         )
       ],
     ),
   );
  }

}