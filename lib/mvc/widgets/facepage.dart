import 'package:flutter/material.dart';


import '../../color.dart';
class facepage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _facepagestate();
  }
}
class _facepagestate extends State<facepage>{
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Container(
      width:screensize.width,
      margin: EdgeInsets.only(left: 10,right: 10),
      decoration: BoxDecoration(
        border: Border.all(width: 0.01),
      ),
    child: Column(
      children: [
        Image.asset('images/mvc/facebook.png'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Container(
                  child:Image.asset('images/mvc/exe1.png'),
                ),
                Container(
                  margin: EdgeInsets.only(left: 13),
                  child:Image.asset('images/mvc/exe2.png'),
                ),
                Container(
                  margin: EdgeInsets.only(left: 23),
                  child:Image.asset('images/mvc/exe3.png'),
                ),
                Container(
                  margin: EdgeInsets.only(left: 33),
                  height: 17,
                  width: 17,
                  decoration: BoxDecoration(
                      color: facebookcolor,
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(100))
                  ),
                  child:  Align(
                    alignment: AlignmentDirectional.center,
                    child:  Text('+9',
                      style:TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: Colors.white,
                          fontWeight:FontWeight.w400,
                          fontSize: 8
                      ),
                    ) ,
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child:  Text('3 Comments',
                style:TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: splashgragy,
                    fontWeight:FontWeight.w700,
                    fontSize: 13
                ),
              ) ,
            ),
          ],
        ),
        SizedBox(height: 15,),
        //divider.png
        Container(
          //margin: EdgeInsets.only(left: 0),
          child:Image.asset('images/mvc/divider.png'),
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(children: [
              Container(
                margin: EdgeInsets.only(left: 25,right: 5),
                child:Image.asset('images/mvc/like.png'),
              ),
              Align(
                alignment: AlignmentDirectional.center,
                child:  Text('Like',
                  style: TextStyle(
                      fontFamily: 'Satoshi-Variable',
                      color: facebooklikecolor,
                      fontWeight:FontWeight.w500,
                      fontSize: 13
                  ),
                ) ,
              ),
            ],
            ),
            Row(children: [
              Container(
                margin: EdgeInsets.only(left: 25,right: 5),
                child:Image.asset('images/mvc/comment.png'),
              ),
              Align(
                alignment: AlignmentDirectional.center,
                child:  Text('Comments',
                  style: TextStyle(
                      fontFamily: 'Satoshi-Variable',
                      color: facebooklikecolor,
                      fontWeight:FontWeight.w500,
                      fontSize: 13
                  ),
                ) ,
              ),
            ],
            ),
            Row(children: [
              Container(
                margin: EdgeInsets.only(left: 25,right: 5),
                child:Image.asset('images/mvc/savepost.png'),
              ),
              Align(
                alignment: AlignmentDirectional.center,
                child:  Text('Save',
                  style: TextStyle(
                      fontFamily: 'Satoshi-Variable',
                      color: facebooklikecolor,
                      fontWeight:FontWeight.w500,
                      fontSize: 13
                  ),
                ) ,
              ),
            ],
            )
          ],
        ),
        SizedBox(height: 15,),
        //divider.png
        Container(
          //margin: EdgeInsets.only(left: 0),
          child:Image.asset('images/mvc/divider.png'),
        ),
      ],
    ),
    );
  }

}
