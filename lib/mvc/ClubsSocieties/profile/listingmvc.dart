import 'package:flutter/material.dart';

import '../../../color.dart';
///listingmvc
class listingmvc extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _listingmvcstate();
  }
}
class _listingmvcstate extends State<listingmvc>{
  int _groupValue = -1;
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
    backgroundColor:clubsansosbackground,
    body:ListView(
    children: [
      SizedBox(height: 13,),
      Row(
        children: [
          InkWell(
            onTap:(){
              Navigator.pop(context);
            },
            child: Container(
              margin:EdgeInsets.only(left:16,top: 16),
              child:Image.asset('images/mvc/coloredbackarrow.png'),
            ),
          ),
          Container(
            margin:EdgeInsets.only(left:screensize.width*0.34,top: 16),
            child:Align(
              alignment: AlignmentDirectional.center,
              child:  Text('New Event',
                style: TextStyle(
                    fontFamily: 'Satoshi-Variable',
                    color: facebooklikecolor,
                    fontWeight:FontWeight.w700,
                    fontSize: 17
                ),
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 54,),
      Card(
      margin:EdgeInsets.only(left:16,right:16),
      elevation:1,
      shape:RoundedRectangleBorder(
      borderRadius:BorderRadius.circular(4)
      ),
      color:Colors.white,
      child:Container(
      height:149,
      width:343,
      decoration:BoxDecoration(
      borderRadius:BorderRadius.circular(4),
      color:Colors.white
      ),
      child:Column(
      mainAxisAlignment:MainAxisAlignment.center,
      children: [
       Center(
       child:Image.asset('images/mvc/clubsandsos/Upload Image.png'),
       ),
        Center(
          child:Align(
            alignment: AlignmentDirectional.center,
            child:  Text('Add Photos',
              style: TextStyle(
                  fontFamily: 'Satoshi-Variable',
                  color:AddPhotoscolor,
                  fontWeight:FontWeight.w700,
                  fontSize: 12
              ),
            ),
          ),
        ),
      ],
      ),
      ),
      ),
     ///end of first card
     SizedBox(height:6,),
     Container(
     margin:EdgeInsets.only(left:16),
     child:Align(
       alignment: AlignmentDirectional.center,
       child:  Text('Event type',
         style: TextStyle(
             fontFamily: 'Satoshi-Variable',
             color:event2colors,
             fontWeight:FontWeight.w700,
             fontSize: 13
         ),
       ),
     ),
     ),
     SizedBox(height: 14,),
     Row(
     children: [
      Container(
      margin:EdgeInsets.only(left:14),
      )
     ],
     )
    ],
    ),
    );

  }
  Widget _myRadioButton({required String title, required int value,
    required Function onChanged}) {
    return RadioListTile(
      value: value,
      groupValue: _groupValue,
      onChanged:onChanged(),
      title: Text(title),
    );
  }
}