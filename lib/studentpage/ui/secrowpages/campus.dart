import 'package:flutter/material.dart';
class campuspage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _campuspagestate();
  }
  }
  class _campuspagestate extends State<campuspage>{
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
   return  Scaffold(
     body: ListView(
       children: [

       ],
     ),
   );
  }

  }
















                  // ListView(
                  // children: [
                  // Row(
                  // children: [
                  // Container(
                  // margin: EdgeInsets.only(left: screensize.width*0.1),
                  // child:  Align(
                  // alignment: AlignmentDirectional.topStart,
                  // child:  Text('Campus',
                  // style:TextStyle(
                  // fontFamily: 'Satoshi-Medium',
                  // color: Colors.black,
                  // fontWeight:FontWeight.w700,
                  // fontSize: 32
                  // ),
                  // ) ,
                  // ),
                  // ),
                  // Container(
                  // margin: EdgeInsets.only(left: screensize.width*0.31),
                  // child: Image.asset('images/search.png'),
                  // ),
                  // Container(
                  // margin: EdgeInsets.only(left: screensize.width*0.049),
                  // child: Image.asset('images/profile account.png'),
                  // ),
                  // ],
                  // ),
                  // SizedBox(height: screensize.height*0.06,),
                  // Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // children: [
                  // Butn(txt: 'Feed',color: splashgragy,btnhight: 27,
                  // fontwiew: FontWeight.w400,Size: 14
                  // ,marginbottom: 15,marginleft: 10,marginright: 10,margintop: 0
                  // ,btnwidth: screensize.width*0.4,color2:splashgragy ,
                  // pageroute: Profilepage(),
                  // dosomething: (){
                  // },
                  // colorbtntxt: Colors.black,
                  // radvalue: 15),
                  // Butn(txt: 'Events',color: splashgragy,btnhight: 27,
                  // fontwiew: FontWeight.w400,Size: 14
                  // ,marginbottom: 15,marginleft: 10,marginright: 10,margintop: 0
                  // ,btnwidth: screensize.width*0.4,color2:splashgragy,
                  // pageroute:  Profilepage(),
                  // dosomething: (){
                  // },
                  // colorbtntxt: Colors.black,
                  // radvalue: 15),
                  // ],
                  // ),
                  // //here
                  // SizedBox(height: screensize.height*0.06,),
                  // Container(
                  // margin: EdgeInsets.only(left: screensize.width*0.1),
                  // child:  Align(
                  // alignment: AlignmentDirectional.topStart,
                  // child:  Text('Clubs & Societies',
                  // style:TextStyle(
                  // fontFamily: 'Satoshi-Medium',
                  // color: Colors.black,
                  // fontWeight:FontWeight.w400,
                  // fontSize: 14
                  // ),
                  // ) ,
                  // ),
                  // ),
                  // SizedBox(height: 15,),
                  // SingleChildScrollView(
                  // scrollDirection: Axis.horizontal,
                  // child: Row(
                  // children: [
                  // InkWell(
                  // onTap: (){
                  // Navigator.push(context,
                  // MaterialPageRoute(builder:(context) =>
                  // Newlisting(),));
                  // },
                  // child: Container(
                  // margin:EdgeInsets.only(right: 10,left: 10)
                  // ,child:
                  // campusbox(txt: 'ComBall',)
                  // ),
                  // ),
                  // Container(
                  // margin:EdgeInsets.only(right: 10,left: 10)
                  // ,child:
                  // campusbox(txt: 'BeeBall',)
                  // ),
                  // Container(
                  // margin:EdgeInsets.only(right: 10,left: 10)
                  // ,child:
                  // campusbox(txt: 'Surf & Turf',)
                  // ),
                  // ],
                  // ),
                  // ),
                  // ///this second clup
                  // SizedBox(height: screensize.height*0.06,),
                  // Container(
                  // margin: EdgeInsets.only(left: screensize.width*0.1),
                  // child:  Align(
                  // alignment: AlignmentDirectional.topStart,
                  // child:  Text('University',
                  // style:TextStyle(
                  // fontFamily: 'Satoshi-Medium',
                  // color: Colors.black,
                  // fontWeight:FontWeight.w400,
                  // fontSize: 14
                  // ),
                  // ) ,
                  // ),
                  // ),
                  // SizedBox(height: 15,),
                  // SingleChildScrollView(
                  // scrollDirection: Axis.horizontal,
                  // child: Row(
                  // children: [
                  // Container(
                  // margin:EdgeInsets.only(right: 10,left: 10)
                  // ,child:
                  // campusbox(txt: 'Cyber Security',)
                  // ),
                  // Container(
                  // margin:EdgeInsets.only(right: 10,left: 10)
                  // ,child:
                  // campusbox(txt: 'Career Day',)
                  // ),
                  // Container(
                  // margin:EdgeInsets.only(right: 10,left: 10)
                  // ,child:
                  // campusbox(txt: 'Surf & Turf',)
                  // ),
                  // ],
                  // ),
                  // ),
                  // ///this second clup
                  // ],
                  // );

