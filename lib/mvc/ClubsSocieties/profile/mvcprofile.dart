import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import '../../../color.dart';
class mvcprofile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _mvcprofile();
  }
}
class _mvcprofile extends State<mvcprofile>{
  int inmytabonhomepageclicked=0;
  bool Shmypostwidget=false;
  TextEditingController wheredoyousearch=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
   return Scaffold(
     body:ListView(
      children: [
        SizedBox(
         height: 15,
        ),
       Row(
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
          Container(
            margin: EdgeInsets.only(left: 90,top: 15),
            alignment: AlignmentDirectional.center,
            child: Align(
              alignment: AlignmentDirectional.center,
              child:  Text('Club/Society Name',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: adminaboutcolors,
                    fontWeight:FontWeight.w700,
                    fontSize: 16
                ),
              ),
            ),
          ),
          Container(
            alignment: AlignmentDirectional.topStart,
            margin: EdgeInsets.only(left:3,top: 15),
            child: InkWell(
                onTap: (){
                },
                child: Image.asset('images/mvc/cat/Arrow - Down 2.png')),
          ),
          Container(
            alignment: AlignmentDirectional.topEnd,
            margin: EdgeInsets.only(left:90,top: 15),
            child: InkWell(
                onTap: (){
                },
                child: Image.asset('images/mvc/bluesearch.png')),
          ),
        ],
       ),
       SizedBox(height: 10,),
       Stack(
         children: [
          Container(
          width:screensize.width,
          height:142,
          decoration:BoxDecoration(
          borderRadius:BorderRadius.circular(5),
          ),
          child: Image.asset('images/mvc/cat/image 110.png'
          ,fit: BoxFit.fill,
            width:screensize.width,
            height:142,
          ),
          ),
           Container(
           height:90,
           width:90,
           margin:EdgeInsets.only(
           left: screensize.width*0.4,
           top: 90
           ),
           decoration:BoxDecoration(
           borderRadius:BorderRadius.circular(100),
           color:chatscolors2
           ),
           child:Center(
           child:Align(
             alignment: AlignmentDirectional.center,
             child:  Text('JD',
               style: TextStyle(
                   fontFamily: 'Satoshi-Variable',
                   color:Colors.white,
                   fontWeight:FontWeight.w700,
                   fontSize: 34
               ),
             ),
           ),
           ),
           )
         ],
       ),
       ///Satoshi-Variable
        Container(
          margin:EdgeInsets.only(top: 14),
          child: Center(
            child:Align(
              alignment: AlignmentDirectional.center,
              child:  Text('Club/Society Name',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color:blackpublishtting,
                    fontWeight:FontWeight.w700,
                    fontSize: 16
                ),
              ),
            ),
          ),
        ),
        Container(
          margin:EdgeInsets.only(top: 2),
          child: Center(
            child:Align(
              alignment: AlignmentDirectional.center,
              child:  Text('56 members',
                style: TextStyle(
                    fontFamily: 'Satoshi-Light',
                    color:blackpublishtting,
                    fontWeight:FontWeight.w500,
                    fontSize: 13
                ),
              ),
            ),
          ),
        ),
       InkWell(
         onTap:(){
         print('tools');
         },
         child: Card(
           elevation:2,
           margin:EdgeInsets.only(left: screensize.width*0.35,
               right:screensize.width*0.35,top:7),
           shape:RoundedRectangleBorder(
           borderRadius:BorderRadius.circular(4),
           ),
           child: Container(
            width:95,
            height:26,
            alignment:AlignmentDirectional.center,
            decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(4),
            color: chatscolors2,
            ),
            child:Center(
              child:Align(
                alignment: AlignmentDirectional.center,
                child:  Text('View tool',
                  style: TextStyle(
                      fontFamily: 'Satoshi-Medium',
                      color:Colors.white,
                      fontWeight:FontWeight.w500,
                      fontSize: 10
                  ),
                ),
              ),
            ),
           ),
         ),
       ),
       ///three littele boxes
       SizedBox(height:37,),
       Row(
       children: [
       InkWell(
         onTap:(){
         setState(() {
           inmytabonhomepageclicked=1;
           Shmypostwidget=!Shmypostwidget;
         });
         },
         child: Container(
          width:49,
          height:32,
          margin: EdgeInsets.only(left:16),
          decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          color:inmytabonhomepageclicked==1?grayblackpublishtting:Colors.white,
          ),
          child:Center(
          child: Align(
         alignment: AlignmentDirectional.center,
         child:  Text('Posts',
         style: TextStyle(
         fontFamily: 'Satoshi-Medium',
         color:Colors.black,
         fontWeight:FontWeight.w700,
         fontSize: 10
               ),
             ),
           ),
          ),
         ),
       ),
       ///second one
         InkWell(
           onTap:(){
             setState(() {
               inmytabonhomepageclicked=2;
               Shmypostwidget=false;
             });
           },
           child: Container(
             width:49,
             height:32,
             margin: EdgeInsets.only(left:11),
             decoration:BoxDecoration(
               borderRadius: BorderRadius.circular(36),
               color:inmytabonhomepageclicked==2?grayblackpublishtting:Colors.white,
             ),
             child:Center(
               child: Align(
                 alignment: AlignmentDirectional.center,
                 child:  Text('About',
                   style: TextStyle(
                       fontFamily: 'Satoshi-Medium',
                       color:Colors.black,
                       fontWeight:FontWeight.w700,
                       fontSize: 10
                   ),
                 ),
               ),
             ),
           ),
         ),
        ///thired one
         InkWell(
           onTap:(){
             setState(() {
               inmytabonhomepageclicked=3;
               Shmypostwidget=false;
             });
           },
           child: Container(
             width:49,
             height:32,
             margin: EdgeInsets.only(left:11),
             decoration:BoxDecoration(
               borderRadius: BorderRadius.circular(36),
               color:inmytabonhomepageclicked==3?grayblackpublishtting:Colors.white,
             ),
             child:Center(
               child: Align(
                 alignment: AlignmentDirectional.center,
                 child:  Text('Photos',
                   style: TextStyle(
                       fontFamily: 'Satoshi-Medium',
                       color:Colors.black,
                       fontWeight:FontWeight.w700,
                       fontSize: 10
                   ),
                 ),
               ),
             ),
           ),
         ),
       ],
       ),
        ///here cut hole design
       Container(
        child:SingleChildScrollView(
        scrollDirection:Axis.vertical,
        child:Shmypostwidget==true?Column(
        ///here my post widget
          ///here my post widget
          /// here my post widget
          ///here my post widget
          /// here my post widget
        children: [
          Card(
            elevation:1,
            color:Colors.white,
            shape:RoundedRectangleBorder(
                borderRadius:BorderRadius.only(
                    topRight:Radius.circular(5),
                    topLeft: Radius.circular(5)
                )
            ),
            margin:EdgeInsets.only(
                top:20
            ),
            child:Container(
              width:screensize.width,
              height:screensize.height*0.65,
              decoration:BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5),
                      topRight: Radius.circular(5))
              ),
              ///Drawer handle.png
              child:Column(
                children: [
                  SizedBox(
                    height:8,
                  ),
                  InkWell(
                    onTap:(){
                    },
                    child: Center(
                      child:Image.asset('images/mvc/cat/Drawer handle.png'),
                    ),
                  ),
                  SizedBox(
                    height:75,
                  ),
                  InkWell(
                    onTap:()async{
                    },
                    child: Row(
                      children: [
                        Container(
                          margin:EdgeInsets.only(left: 16),
                          child:Image.asset('images/mvc/clubsandsos/Frame 162764.png'),
                        ),
                        Container(
                          margin:EdgeInsets.only(left: 12,top: 7),
                          child: Align(
                            alignment: AlignmentDirectional.topStart,
                            child:  Text('Pin post',
                              style: TextStyle(
                                  fontFamily: 'Satoshi-Medium',
                                  color: adminaboutcolors,
                                  fontWeight:FontWeight.w700,
                                  fontSize: 17
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  ///first row
                  SizedBox(height: 24,),
                  Row(
                    children: [
                      Container(
                        margin:EdgeInsets.only(left: 16),
                        child:Image.asset('images/mvc/clubsandsos/Frame 162764-2.png'),
                      ),
                      Container(
                        margin:EdgeInsets.only(left: 12,top: 7),
                        child: Align(
                          alignment: AlignmentDirectional.topStart,
                          child:  Text('Save post',
                            style: TextStyle(
                                fontFamily: 'Satoshi-Medium',
                                color: adminaboutcolors,
                                fontWeight:FontWeight.w700,
                                fontSize: 17
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  ///second row
                  SizedBox(height: 24,),
                  Row(
                    children: [
                      Container(
                        margin:EdgeInsets.only(left: 16),
                        child:Image.asset('images/mvc/clubsandsos/Frame 162764-3.png'),
                      ),
                      Container(
                        margin:EdgeInsets.only(left: 12,top: 7),
                        child: Align(
                          alignment: AlignmentDirectional.topStart,
                          child:  Text('Edit',
                            style: TextStyle(
                                fontFamily: 'Satoshi-Medium',
                                color: adminaboutcolors,
                                fontWeight:FontWeight.w700,
                                fontSize: 17
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  ///third
                  SizedBox(height: 24,),
                  Row(
                    children: [
                      Container(
                        margin:EdgeInsets.only(left: 16),
                        child:Image.asset('images/mvc/clubsandsos/Frame 162764-4.png'),
                      ),
                      Container(
                        margin:EdgeInsets.only(left: 12,top: 7),
                        child: Align(
                          alignment: AlignmentDirectional.topStart,
                          child:  Text('Delete',
                            style: TextStyle(
                                fontFamily: 'Satoshi-Medium',
                                color: adminaboutcolors,
                                fontWeight:FontWeight.w700,
                                fontSize: 17
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  ///fourth
                  SizedBox(height: 24,),
                  Row(
                    children: [
                      Container(
                        margin:EdgeInsets.only(left: 16),
                        child:Image.asset('images/mvc/clubsandsos/Frame 162764-5.png'),
                      ),
                      Container(
                        margin:EdgeInsets.only(left: 12,top: 7),
                        child: Align(
                          alignment: AlignmentDirectional.topStart,
                          child:  Text('View edit history',
                            style: TextStyle(
                                fontFamily: 'Satoshi-Medium',
                                color: adminaboutcolors,
                                fontWeight:FontWeight.w700,
                                fontSize: 17
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
          ///here my post widget
          /// here my post widget
          ///here my post widget
          /// here my post widget
        ):Column(
        children: [
          Container(
            margin:EdgeInsets.only(top: 5,left: 16),
            alignment:AlignmentDirectional.topStart,
            child:Image.asset('images/mvc/cat/Line 536.png',
            ),
          ),
          ///Your posts
          Container(
            margin:EdgeInsets.only(top: 5,left: 16),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child:  Text('Your posts',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color:blackpublishtting,
                    fontWeight:FontWeight.w700,
                    fontSize: 16
                ),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                height:32,
                width:32,
                margin:EdgeInsets.only(
                    left:20,
                    top: 35
                ),
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(100),
                    color:circlescolors
                ),
                child:Center(
                  child:Align(
                    alignment: AlignmentDirectional.center,
                    child:  Text('',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Variable',
                          color:Colors.white,
                          fontWeight:FontWeight.w700,
                          fontSize: 12
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:30,left: 10,right: 20),
                width: 293,
                height: 32,
                decoration: BoxDecoration(
                  color:testfieldtting,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  controller: wheredoyousearch,
                  validator: (value){
                    if (value == null || value.isEmpty) {
                      return '  What’s on your mind?';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: '  What’s on your mind?',
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 15,bottom: 15),
                      hintStyle: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color:testfildtting,
                        fontWeight:FontWeight.w500,
                        fontSize: 13,
                      )
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 21,),
          Row(
            children: [
              Container(
                margin:EdgeInsets.only(left: 20),
                alignment:AlignmentDirectional.topStart,
                child:Image.asset('images/mvc/cat/Edit.png',
                ),
              ),
              Container(
                margin:EdgeInsets.only(left:8),
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child:  Text('Status',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color:blackpublishtting,
                        fontWeight:FontWeight.w500,
                        fontSize: 12
                    ),
                  ),
                ),
              ),
              ///second img
              Container(
                margin:EdgeInsets.only(left: 26),
                alignment:AlignmentDirectional.topStart,
                child:Image.asset('images/mvc/cat/imaginimg.png',
                ),
              ),
              Container(
                margin:EdgeInsets.only(left:8),
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child:  Text('Photo',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color:blackpublishtting,
                        fontWeight:FontWeight.w500,
                        fontSize: 12
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap:(){
                  print('Manage posts');
                },
                child: Card(
                  elevation:2,
                  margin:EdgeInsets.only(left: 123.5,
                  ),
                  shape:RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(4),
                  ),
                  child: Container(
                    width:82,
                    height:26,
                    alignment:AlignmentDirectional.center,
                    decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(4),
                      color: chatscolors2,
                    ),
                    child:Center(
                      child:Align(
                        alignment: AlignmentDirectional.center,
                        child:  Text('Manage posts',
                          style: TextStyle(
                              fontFamily: 'Satoshi-Medium',
                              color:Colors.white,
                              fontWeight:FontWeight.w500,
                              fontSize: 10
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height:32,
                width:32,
                margin:EdgeInsets.only(
                  left:20,
                  top: 33,
                ),
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(100),
                    color:circlescolors
                ),
                child:Center(
                  child:Align(
                    alignment: AlignmentDirectional.center,
                    child:  Text('',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Variable',
                          color:Colors.white,
                          fontWeight:FontWeight.w700,
                          fontSize: 12
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 9,top: 25),
                    alignment: AlignmentDirectional.center,
                    child: Align(
                      alignment: AlignmentDirectional.center,
                      child:  Text('Club/Society Name',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: adminaboutcolors,
                            fontWeight:FontWeight.w700,
                            fontSize: 16
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 9,top:5),
                    alignment: AlignmentDirectional.center,
                    child: Align(
                      alignment: AlignmentDirectional.center,
                      child:  Text('Posted by John Doe                 ',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: hinttestfildtting,
                            fontWeight:FontWeight.w500,
                            fontSize: 10
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height:13,),
          Container(
            margin:EdgeInsets.only(left: 20,right: 20),
            child: Align(
              alignment: AlignmentDirectional.center,
              child:  Text('If you think adventure is dangerous, try routine, it’s lethal Paulo Coelho! Good morning all friends.',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: adminaboutcolors,
                    fontWeight:FontWeight.w500,
                    fontSize: 13
                ),
              ),
            ),
          )
        ],
        ),
        ),
       )
      ],
     ),
   );
  }

}