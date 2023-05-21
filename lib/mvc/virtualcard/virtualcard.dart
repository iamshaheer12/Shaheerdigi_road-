
import 'package:ecampus/mvc/virtualcard/qrcode.dart';

import 'package:flutter/material.dart';
import '../../color.dart';
///virtualcard.dart
class virtualcard extends StatefulWidget {
  var docsvalue;
  List datalst=[];
  virtualcard({required this.docsvalue,required this.datalst});
  @override
  State<StatefulWidget> createState() {
   return _virtualcardstate(docsvalue: this.docsvalue,datalst:this.datalst);
  }
}
class _virtualcardstate extends State<virtualcard>{
  var docsvalue;
  List datalst=[];
  _virtualcardstate({required this.docsvalue,required this.datalst});
  @override
  Widget build(BuildContext context) {
   var screensize=MediaQuery.of(context).size;
   //var crnuser=FirebaseAuth.instance.currentUser;
  
   return Scaffold(
     backgroundColor:Color(0xFFF9FAFA),
     body:ListView(
       children: [
         Container(
           alignment: AlignmentDirectional.topStart,
           margin: EdgeInsets.only(left: screensize.width*0.05,top: 44),
           child: InkWell(
               onTap: (){
                 Navigator.pop(context);
               },
               child: Image.asset('images/mvc/coloredbackarrow.png')),
         ),
         Row(
           children: [
             InkWell(
               onTap:(){
                ///qrcode
               Navigator.push(context,
              MaterialPageRoute(builder: (context) =>
              qrcode(docsvalue:this.docsvalue,
              datalst:this.datalst),));
               },
               child: Container(
                 margin:EdgeInsets.only(left:16,top: 20),
                 child: Image.asset('images/mvc/sitting/WhatsApp Image 2022-12-19 at 3.46 1.png'),
               ),
             ),
             SizedBox(width: 8,),
             Column(
               children: [
                 ///#131313
                 Container(
                   child: Text('University College Cork',
                     style:TextStyle(
                         fontFamily: 'Satoshi-Variable',
                         color: Color(0xFF131313),
                         fontWeight:FontWeight.w700,
                         fontSize: 16
                     ),
                   ),
                 ),
                 Row(///EBFFF1
                children: [
                Container(
                  margin:EdgeInsets.only(left:8),
                  alignment:AlignmentDirectional.topStart,
                  width: 59,
                  height: 18,
                  decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(3),
                    color:Color(0xFFEBFFF1),
                  ),
                  child:Center(
                    child: Text(
                'Online'
        ,style:TextStyle(
        fontFamily: 'Satoshi-Variable',
        color: Color(0xFF119C2B),
        fontWeight:FontWeight.w700,
        fontSize: 14
    ),
                    ),
                  ),
                ),
                  Container(
                    alignment:AlignmentDirectional.topStart,
                    margin:EdgeInsets.only(left:6),
                    child: Text('Last updated 22/11/2022 at 1:42 AM',
                      style:TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: Color(0xFF3E3E3E),
                          fontWeight:FontWeight.w700,
                          fontSize: 9
                      ),
                    ),
                  ),
                ],
                 )
               ],
             )
           ],
         ),
         Card(
           margin:EdgeInsets.only(left:9,right:9,top:27),
           elevation:3,
           color:Colors.white,
           shape:RoundedRectangleBorder(borderRadius:
           BorderRadius.circular(8)),
           child: Container(
           height:309,
           width:357,
           decoration:BoxDecoration(
           borderRadius: BorderRadius.circular(8),
           color:Colors.white
           ),
           child:Row(
           children: [
             Column(
             children: [
             Stack(
                 children: [
                   datalst[0]['MYPHOTO']==null?
                   Container(
                     height:134,
                     width:124,
                     alignment:AlignmentDirectional.topStart,
                     margin:EdgeInsets.only(left:8,top:16),
                     decoration:BoxDecoration(
                       borderRadius:BorderRadius.circular(20),
                     ),
                     ///Image.asset
                     ///${datalst[0]['MYPHOTO']}  ///images/mvc/sitting/Rectangle Copy 17.png
                     child:Image.asset('images/mvc/sitting/Rectangle Copy 17.png',
                       height:134,
                       width:124,
                     ),
                   )
                       :Container(
                  height:107,
                  width:134,
                  alignment:AlignmentDirectional.topStart,
                  margin:EdgeInsets.only(left:8,top:16),
                  decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(20),
                  ),
                  ///Image.asset
                  ///${datalst[0]['MYPHOTO']}  ///images/mvc/sitting/Rectangle Copy 17.png
                  child:Image.network('${datalst[0]['MYPHOTO']}',
                    height:107,
                    width:134,
                  ),
                  ),
                   Container(
                     height:26,
                     width:26,
                     alignment:AlignmentDirectional.topStart,
                     margin:EdgeInsets.only(left:90,top:115),
                     decoration:BoxDecoration(
                     ),
                     child:Image.asset('images/mvc/sitting/Banner.png',
                       height:26,
                       width:26,
                     ),
                   ),
                   Container(
                     alignment:AlignmentDirectional.topStart,
                     margin:EdgeInsets.only(top:130,left:42),
                     ///${datalst[0]['Legal first name']} ///Student ID
                     child:Text('${datalst[0]['Legal first name']}',
                       style:TextStyle(
                           fontFamily: 'Satoshi-Medium',
                           color:splashcolor,
                           fontWeight:FontWeight.w700,
                           fontSize:8
                       ),
                     ),
                   ),
                 ],
               ),
              ///flags
               Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Container(
               margin:EdgeInsets.only(left:20,top:11),
               width:39.6,
               height:31.54,
               child:Image.asset('images/mvc/sitting/Spain.png',
               width:39.6,
               height:31.54,
               ),
                ),
                Container(
                  margin:EdgeInsets.only(left:9,top:11),
                  width:39.6,
                  height:31.54,
                  child:Image.asset('images/mvc/sitting/Group.png',
                    width:39.6,
                    height:31.54,
                  ),
                )
              ],
               )
             ],
             ),
            Stack(
              children: [
                Container(
                  margin:EdgeInsets.only(left:0,top:27),
                  child:Image.asset('images/mvc/sitting/backgroundLogo.png',
                  ),
                ),
                Container(
                  margin:EdgeInsets.only(left:screensize.width*0.50
                      ,right:15,top:262.5),
                  child:Image.asset('images/mvc/sitting/lion.png',
                  ),
                ),
               Container(
                 margin:EdgeInsets.only(left: 1,top: 27),
                child:Column(
                  children: [
                    ///${datalst[0]['Legal first name']}  ///Jane
                    Text('${datalst[0]['Legal first name']}',
                      style:TextStyle(
                          fontFamily: 'Satoshi-Variable',
                          color:event2colors,
                          fontWeight:FontWeight.w700,
                          fontSize:13
                      ),
                    ),
                    SizedBox(height:3,),
                    Text('First name',
                      style:TextStyle(
                          fontFamily: 'Satoshi-Variable',
                          color:chatscolors2,
                          fontWeight:FontWeight.w500,
                          fontSize:10
                      ),
                    ),
                    SizedBox(height: 20,),
                    ///seond   ///${datalst[0]['MYPHONE']} ///090078601
                    Text('090078601',
                      style:TextStyle(
                          fontFamily: 'Satoshi-Variable',
                          color:event2colors,
                          fontWeight:FontWeight.w700,
                          fontSize:13
                      ),
                    ),
                    SizedBox(height:3,),
                    Text('Student number',
                      style:TextStyle(
                          fontFamily: 'Satoshi-Variable',
                          color:chatscolors2,
                          fontWeight:FontWeight.w500,
                          fontSize:10
                      ),
                    ),
                    SizedBox(height: 20,),
                    ///third
                    ///${datalst[0]['Date of birth (DD/MM/YYYY)']} ///YYYY/MM/DD
                    Text('${datalst[0]['Date of birth (DD/MM/YYYY)']}',
                      style:TextStyle(
                          fontFamily: 'Satoshi-Variable',
                          color:event2colors,
                          fontWeight:FontWeight.w700,
                          fontSize:13
                      ),
                    ),
                    SizedBox(height:3,),
                    Text('Date of birth',
                      style:TextStyle(
                          fontFamily: 'Satoshi-Variable',
                          color:chatscolors2,
                          fontWeight:FontWeight.w500,
                          fontSize:10
                      ),
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
               )
              ],
            )
           ],
           ),
           ),
         ),
        Container(
          margin:EdgeInsets.only(top:12,left: 9),
          child:Text('Course details',
            style:TextStyle(
                fontFamily: 'Satoshi-Variable',
                color:facebooklikecolor,
                fontWeight:FontWeight.w700,
                fontSize:20
            ),
          ),
        )
       ],
     ),
   );
  }
}