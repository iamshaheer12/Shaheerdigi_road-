
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../color.dart';
import 'account.dart';

class secorityandprivacy extends StatefulWidget{
  List datalst=[];
  secorityandprivacy({required this.datalst});
  @override
  State<StatefulWidget> createState() {
    return _secorityandprivacystate(datalst: this.datalst);
  }
}
class _secorityandprivacystate extends State<secorityandprivacy>{
  List datalst=[];
  _secorityandprivacystate({required this.datalst});
  // CollectionReference users = FirebaseFirestore.instance.collection('user');
  // var crnuser=FirebaseAuth.instance.currentUser;
  var docsvalue;
  bool _switchValue = true;
  bool _switchValue2 = true;
  bool _switchValue3 = true;

  bool _switchValue4 = true;
  bool _switchValue5 = true;
  bool _switchValue6 = true;
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
   return Scaffold(
     backgroundColor: profilebackgroudcolors,
     body: ListView(
       children: [
         Container(
           alignment: AlignmentDirectional.topStart,
           margin: EdgeInsets.only(left: screensize.width*0.05,top: 15),
           child: InkWell(
               onTap: (){
                 Navigator.pop(context);
               },
               child: Image.asset('images/mvc/coloredbackarrow.png')),
         ),
     Row(
       children: [
         Container(
           margin: EdgeInsets.only(left: screensize.width*0.074),
           child:  Align(
             alignment: AlignmentDirectional.topStart,
             child:  Text('Security & Privacy',
               style: TextStyle(
                   fontFamily: 'Satoshi-Medium',
                   color: Colors.black,
                   fontWeight:FontWeight.w700,
                   fontSize: 32
               ),
             ) ,
           ),
         ),
       ]
     ),
    SizedBox(height: screensize.height*0.009,),
         Container(
           margin: EdgeInsets.only(left:screensize.width*0.074
               ,top: screensize.height*0.009),
           child: Align(
             alignment: AlignmentDirectional.topStart,
             child:  Text('Security',
               style: TextStyle(
                   fontFamily: 'Satoshi-Medium',
                   color: Colors.black,
                   fontWeight:FontWeight.w400,
                   fontSize: 12
               ),
             ) ,
           ),
         ),
         //start mamny rows
         SizedBox(height: screensize.height*0.0159,),
         Card(
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(15)
           ),
           margin: EdgeInsets.only(right:
           screensize.width*0.07,
               left: screensize.width*0.07),
           elevation: 1,
           child: Container(
             width: screensize.width*0.8,
            // height: 221,
             decoration: BoxDecoration(
                 color: Colors.white,
               borderRadius: BorderRadius.circular(15)
             ),
             child:InkWell(onTap: (){
               print("three rows");
             },
                 child: Align(
                   alignment: AlignmentDirectional.centerStart,
                   child: Column(
                     children: [
                       Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                                 top: 10,bottom: 10),
                             child: Image.asset('images/mvc/sitting/Change password.png'),
                           ),
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.03,
                                 top: 10,bottom: 10),
                             child:  InkWell(
                               onTap: (){
                                 Navigator.push(context, MaterialPageRoute(builder:
                                     (context) => Account(datalst:datalst),));
                               },
                               child: Text('Change password',
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
                       ),
                       //end first row
                       Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                                 top: 10,bottom: 10),
                             child: Image.asset('images/mvc/sitting/Devices.png'),
                           ),
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.03,
                                 top: 10,bottom: 10),
                             child:  InkWell(
                               onTap: (){
                                 Navigator.push(context,
                                     MaterialPageRoute(builder: (context) =>
                               secorityandprivacy(datalst: datalst),));
                               },
                               child: Text('Devices',
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
                       ),
                       //end Second row
                       Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                                 top: 10,bottom: 10),
                             child: Image.asset('images/mvc/sitting/Privacy.png'),
                           ),
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.03,
                                 top: 10,bottom: 10),
                             child:  Text('Privacy',
                               style: TextStyle(
                                   fontFamily: 'Satoshi-Medium',
                                   color: Colors.black,
                                   fontWeight:FontWeight.w400,
                                   fontSize: 12
                               ),
                             ),
                           ),
                         ],
                       ),
                       //twice multi rows
                       Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                                 top: 10,bottom: 10),
                             child: Image.asset('images/qr.png'),
                           ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: screensize.width*0.03,
                                    top: 10,bottom: 10),
                                child:  Text('Face ID',
                                  style:TextStyle(
                                      fontFamily: 'Satoshi-Medium',
                                      color: Colors.black,
                                      fontWeight:FontWeight.w400,
                                      fontSize: 12
                                  ),
                                ),
                              ),
                              //end three rows
                              ///swtch btn1
                              SizedBox(width: screensize.width*0.472,),
                              Container(
                                margin: EdgeInsets.only(
                                    top: 1),
                                child: CupertinoSwitch(
                                  value: _switchValue,
                                  onChanged: (value) {
                                    setState(() {
                                      _switchValue = value;
                                    });
                                  },
                                ),
                                //Image.asset('images/switch.png',
                               // ),
                              ),
                            ],
                          )
                         ],
                       ),
                     ],
                   ),
                 )),
           ),
         ),
         // end first main container

         //*********start mamny rows*******************
         //*********start mamny rows*******************
         //*********start mamny rows*******************
         SizedBox(height: screensize.height*0.009,),
         Container(
           margin: EdgeInsets.only(left:screensize.width*0.074
               ,top: screensize.height*0.009),
           child: Align(
             alignment: AlignmentDirectional.topStart,
             child:  Text('Marketing',
               style: TextStyle(
                   fontFamily: 'Satoshi-Medium',
                   color: Colors.black,
                   fontWeight:FontWeight.w400,
                   fontSize: 12
               ),
             ) ,
           ),
         ),
         //*********start mamny rows*******************
         //*********start mamny rows*******************
         //*********start mamny rows*******************
         SizedBox(height:  screensize.height*0.0159,),
         Card(
           shape: RoundedRectangleBorder(borderRadius:
           BorderRadius.circular(15)),
           margin: EdgeInsets.only(right:
           screensize.width*0.07,
               left: screensize.width*0.07),
           elevation: 1,
           child: Container(
             width: screensize.width*0.8,
             decoration: BoxDecoration(
                 color: Colors.white,
               borderRadius: BorderRadius.circular(15)
             ),
             child:InkWell(onTap: (){
               print("three rows");
             },
                 child: Align(
                   alignment: AlignmentDirectional.centerStart,
                   child: Column(
                     children: [
                       //end Second row
                       Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                                 top: 10,bottom: 10),
                             child: Image.asset('images/mvc/sitting/xsaxaxas.png'),
                           ),
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.03,
                                 top: 10,bottom: 10),
                             child:  Text('App notifications',
                               style:TextStyle(
                                   fontFamily: 'Satoshi-Medium',
                                   color: Colors.black,
                                   fontWeight:FontWeight.w400,
                                   fontSize: 12
                               ),
                             ),
                           ),
                           //end three rows
                           SizedBox(width: screensize.width*0.36,),
                           Container(
                             margin: EdgeInsets.only(
                                 top: 1),
                             ///second btn switch
                             child: CupertinoSwitch(
                               value: _switchValue2,
                               onChanged: (value) {
                                 setState(() {
                                   _switchValue2 = value;
                                 });
                               },
                             ),
                            // Image.asset('images/switch.png',),
                           ),
                         ],
                       ),
                       Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                                 top: 10,bottom: 10),
                             child: Image.asset('images/mvc/sitting/Personalized emails.png'),
                           ),
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.025,
                                 top: 10,bottom: 10),
                             child:  Text('Personalized emails',
                               style:TextStyle(
                                   fontFamily: 'Satoshi-Medium',
                                   color: Colors.black,
                                   fontWeight:FontWeight.w400,
                                   fontSize: 12
                               ),
                             ),
                           ),

                           //end three rows
                           SizedBox(width: screensize.width*0.32,),
                           Container(
                             margin: EdgeInsets.only(
                                 top: 1),
                             child:  CupertinoSwitch(
                               value: _switchValue3,
                               onChanged: (value) {
                                 setState(() {
                                   _switchValue3 = value;
                                 });
                               },
                             ),
                           //  Image.asset('images/switch.png',),
                           ),
                         ],
                       ),
                       Container(
                         margin: EdgeInsets.only(left:50,
                             top: 0,bottom: 10,right: screensize.width*0.09),
                         child:  Text('I am happy to receive emails about eCampus products, services and offers that may interest me.',
                           style:TextStyle(
                               fontFamily: 'Satoshi-Medium',
                               color: filedcolor,
                               fontWeight:FontWeight.w500,
                               fontSize: 12
                           ),
                         ),
                       ),
                       //twice multi rows
                       Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                                 top: 10,bottom: 10),
                             child: Image.asset('images/mvc/sitting/Personalized pushes.png',
                             width: 18,height: 20,),
                           ),
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.03,
                                 top: 10,bottom: 10),
                             child:  Text('Personalized pushes',
                               style:TextStyle(
                                   fontFamily: 'Satoshi-Medium',
                                   color: Colors.black,
                                   fontWeight:FontWeight.w400,
                                   fontSize: 12
                               ),
                             ),
                           ),
                           //end three rows
                           SizedBox(width: screensize.width*0.32,),
                           Container(
                             margin: EdgeInsets.only(
                                 top: 1),
                             child:  CupertinoSwitch(
                               value: _switchValue4,
                               onChanged: (value) {
                                 setState(() {
                                   _switchValue4 = value;
                                 });
                               },
                             ),
                            // Image.asset('images/switch.png',),
                           ),
                         ],
                       ),
                       Container(
                         margin: EdgeInsets.only(left:50,
                             top: 0,bottom: 10,right: screensize.width*0.09),
                         child:  Text('I am happy to see recommendations about eCampus products, services and offers that may interest me.',
                           style:TextStyle(
                               fontFamily: 'Satoshi-Medium',
                               color: filedcolor,
                               fontWeight:FontWeight.w500,
                               fontSize: 12
                           ),
                         ),
                       ),
                       Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                                 top: 10,bottom: 10),
                             child: Image.asset('images/mvc/sitting/star.png',
                               width: 14,height: 16,),
                           ),
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.03,
                                 top: 10,bottom: 10),
                             child:  Text('Recommendations',
                               style:TextStyle(
                                   fontFamily: 'Satoshi-Medium',
                                   color: Colors.black,
                                   fontWeight:FontWeight.w400,
                                   fontSize: 12
                               ),
                             ),
                           ),
                           //end three rows
                           SizedBox(width: screensize.width*0.35,),
                           Container(
                             margin: EdgeInsets.only(
                                 top: 1),
                             child:  CupertinoSwitch(
                               value: _switchValue5,
                               onChanged: (value) {
                                 setState(() {
                                   _switchValue5 = value;
                                 });
                               },
                             ),
                           //  Image.asset('images/switch.png',),
                           ),
                         ],
                       ),
                       Container(
                         margin: EdgeInsets.only(left: 50,
                             top: 0,bottom: 10,right: screensize.width*0.09),
                         child:  Text('I am happy to see recommendations about eCampus products, services and offers that may interest me.',
                           style: TextStyle(
                               fontFamily: 'Satoshi-Medium',
                               color: filedcolor,
                               fontWeight:FontWeight.w500,
                               fontSize: 12
                           ),
                         ),
                       ),
                     ],
                   ),
                 )),
           ),
         ),
         //*********start mamny rows*******************
         //*********start mamny rows*******************
         //*********start mamny rows*******************


         //*********start mamny rows*******************
         //*********start mamny rows*******************
         //*********start mamny rows*******************
         SizedBox(height: screensize.height*0.0390,),
         Container(
           margin: EdgeInsets.only(left:screensize.width*0.074
               ,top: screensize.height*0.009),
           child: Align(
             alignment: AlignmentDirectional.topStart,
             child:  Text('Promotions',
               style:TextStyle(
                   fontFamily: 'Satoshi-Medium',
                   color: Colors.black,
                   fontWeight:FontWeight.w400,
                   fontSize: 12
               ),
             ) ,
           ),
         ),
      SizedBox(height: screensize.height*0.0159,),
         Card(
           margin: EdgeInsets.only(right:
           screensize.width*0.07,
               left: screensize.width*0.07),
           elevation: 1,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(15)
           ),
           child: Container(
             width: screensize.width*0.8,
             height: 134,
             decoration: BoxDecoration(
                 color: Colors.white,
               borderRadius: BorderRadius.circular(15)
             ),
             child:InkWell(onTap: (){
               print("three rows");
             },
                 child: Align(
                   alignment: AlignmentDirectional.centerStart,
                   child: Column(
                     children: [
                       //end Second row
                       Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                                 top: 10,bottom: 10),
                             child: Image.asset('images/mvc/sitting/Third party promotions.png'),
                           ),
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.03,
                                 top: 10,bottom: 10),
                             child:  Text('Third party promotions',
                               style:TextStyle(
                                   fontFamily: 'Satoshi-Medium',
                                   color: Colors.black,
                                   fontWeight:FontWeight.w400,
                                   fontSize: 12
                               ),
                             ),
                           ),
                           //end three rows
                           SizedBox(width: screensize.width*0.27,),
                           Container(
                             margin: EdgeInsets.only(
                                 top: 1),
                             child:  CupertinoSwitch(
                               value: _switchValue6,
                               onChanged: (value) {
                                 setState(() {
                                   _switchValue6 = value;
                                 });
                               },
                             ),
                             //Image.asset('images/switch.png',),
                           ),
                         ],
                       ),
                       Container(
                         margin: EdgeInsets.only(left:56,
                             top: 0,bottom: 10,right: screensize.width*0.09),
                         child:  Text('I want to receive email and push notifications from eCampus about third-party promotions. eCampus does not share any personal information with our promotion providers.',
                           style:TextStyle(
                               fontFamily: 'Satoshi-Medium',
                               color:filedcolor,
                               fontWeight:FontWeight.w500,
                               fontSize: 12
                           ),
                         ),
                       ),
                       //twice multi rows
                     ],
                   ),
                 )),
           ),
         ),
         SizedBox(height: 25,)
         //*********start mamny rows*******************
         //*********start mamny rows*******************
         //*********start mamny rows*******************

         //*********start mamny rows*******************
         //*********start mamny rows*******************
         //*********start mamny rows*******************


         //*********start mamny rows*******************
         //*********start mamny rows*******************
         //*********start mamny rows*******************
       ],
     ),
   );
  }
}