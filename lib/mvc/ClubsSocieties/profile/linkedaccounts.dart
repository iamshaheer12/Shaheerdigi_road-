import 'package:flutter/material.dart';

import '../../../color.dart';
///linkedaccounts
class linkedaccounts extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _linkedaccountsstate();
  }
}
class _linkedaccountsstate extends State<linkedaccounts>{
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
   return Scaffold(
    backgroundColor:clubsansosbackground, 
    body:ListView(
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
      Container(
      margin:EdgeInsets.only(top:10,left:16),
      child:Align(
        alignment: AlignmentDirectional.topStart,
        child:  Text('Linked accounts',
          style: TextStyle(
              fontFamily: 'Satoshi-Variable',
              color:adminaboutcolors,
              fontWeight:FontWeight.w700,
              fontSize: 28
          ),
        ) ,
      ),
      ),
     Card(
     margin:EdgeInsets.only(left:16,right:16,top:11),
     elevation:1,
     color:Colors.white,
     shape:RoundedRectangleBorder(
     borderRadius:BorderRadius.circular(8)   
     ),
     child:Container(
      height:74,
      width:343,
      decoration:BoxDecoration(
      borderRadius:BorderRadius.circular(8),
      ),
      child:Row(
      children: [
      Container(
      margin:EdgeInsets.only(left:8,top:14,bottom:14),
      child:Image.asset('images/mvc/cat/instagram.png',
      height:46,
      width:46,
      ),
      ),
      Column(
      children: [
        Container(
          margin:EdgeInsets.only(top:14,left:10),
          child:Align(
            alignment: AlignmentDirectional.topStart,
            child:  Text('Instagram    ',
              style: TextStyle(
                  fontFamily: 'Satoshi-Medium',
                  color:Colors.black,
                  fontWeight:FontWeight.w500,
                  fontSize: 16
              ),
            ) ,
          ),
        ),
        Container(
          margin:EdgeInsets.only(top:4,left:10),
          child:Align(
            alignment: AlignmentDirectional.topStart,
            child:  Text('Not connected',
              style: TextStyle(
                  fontFamily: 'Satoshi-Medium',
                  color:notconnected,
                  fontWeight:FontWeight.w600,
                  fontSize: 13
              ),
            ) ,
          ),
        ),
      ],
      ),
      Container(
      margin:EdgeInsets.only(left:195,right:16,top:29.47,bottom:29.47),
      child:Image.asset('images/mvc/cat/backarroweses.png'),
      )
      ],
      ),
     ),  
     ),
     ///second one
      Card(
        margin:EdgeInsets.only(left:16,right:16,top:11),
        elevation:1,
        color:Colors.white,
        shape:RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(8)
        ),
        child:Container(
          height:74,
          width:343,
          decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(8),
          ),
          child:Row(
            children: [
              Container(
                margin:EdgeInsets.only(left:8,top:14,bottom:14),
                child:Image.asset('images/mvc/cat/Linkdin.png',
                  height:46,
                  width:46,
                ),
              ),
              Column(
                children: [
                  Container(
                    margin:EdgeInsets.only(top:14,left:10),
                    child:Align(
                      alignment: AlignmentDirectional.topStart,
                      child:  Text('Linkedin       ',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color:Colors.black,
                            fontWeight:FontWeight.w500,
                            fontSize: 16
                        ),
                      ) ,
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(top:4,left:10),
                    child:Align(
                      alignment: AlignmentDirectional.topStart,
                      child:  Text('Not connected',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color:notconnected,
                            fontWeight:FontWeight.w600,
                            fontSize: 13
                        ),
                      ) ,
                    ),
                  ),
                ],
              ),
              Container(
                margin:EdgeInsets.only(left:195,right:16,top:29.47,bottom:29.47),
                child:Image.asset('images/mvc/cat/backarroweses.png'),
              )
            ],
          ),
        ),
      ),
      ///third one
      Card(
        margin:EdgeInsets.only(left:16,right:16,top:11),
        elevation:1,
        color:Colors.white,
        shape:RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(8)
        ),
        child:Container(
          height:74,
          width:343,
          decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(8),
          ),
          child:Row(
            children: [
              Container(
                margin:EdgeInsets.only(left:8,top:14,bottom:14),
                child:Image.asset('images/mvc/cat/twitter.png',
                  height:46,
                  width:46,
                ),
              ),
              Column(
                children: [
                  Container(
                    margin:EdgeInsets.only(top:14,left:10),
                    child:Align(
                      alignment: AlignmentDirectional.topStart,
                      child:  Text('Twitter         ',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color:Colors.black,
                            fontWeight:FontWeight.w500,
                            fontSize: 16
                        ),
                      ) ,
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(top:4,left:10),
                    child:Align(
                      alignment: AlignmentDirectional.topStart,
                      child:  Text('Not connected',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color:notconnected,
                            fontWeight:FontWeight.w600,
                            fontSize: 13
                        ),
                      ) ,
                    ),
                  ),
                ],
              ),
              Container(
                margin:EdgeInsets.only(left:195,right:16,top:29.47,bottom:29.47),
                child:Image.asset('images/mvc/cat/backarroweses.png'),
              )
            ],
          ),
        ),
      ),
      ///fourth one
      Card(
        margin:EdgeInsets.only(left:16,right:16,top:11),
        elevation:1,
        color:Colors.white,
        shape:RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(8)
        ),
        child:Container(
          height:74,
          width:343,
          decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(8),
          ),
          child:Row(
            children: [
              Container(
                margin:EdgeInsets.only(left:8,top:14,bottom:14),
                child:Image.asset('images/mvc/cat/facebook.png',
                  height:46,
                  width:46,
                ),
              ),
              Column(
                children: [
                  Container(
                    margin:EdgeInsets.only(top:14,left:10),
                    child:Align(
                      alignment: AlignmentDirectional.topStart,
                      child:  Text('Facebook     ',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color:Colors.black,
                            fontWeight:FontWeight.w500,
                            fontSize: 16
                        ),
                      ) ,
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(top:4,left:10),
                    child:Align(
                      alignment: AlignmentDirectional.topStart,
                      child:  Text('Not connected',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color:notconnected,
                            fontWeight:FontWeight.w600,
                            fontSize: 13
                        ),
                      ) ,
                    ),
                  ),
                ],
              ),
              Container(
                margin:EdgeInsets.only(left:190,right:16,top:29.47,bottom:29.47),
                child:Image.asset('images/mvc/cat/backarroweses.png'),
              )
            ],
          ),
        ),
      ),
      ///done
    ],
    ),
   );
  }

}