import 'package:ecampus/mvc/ClubsSocieties/societies.dart';
import 'package:flutter/material.dart';

import '../../color.dart';
import 'clubsocietyname.dart';

///cubs.dart
class clubs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   return _cubsstate();
  }
}
class _cubsstate extends State<clubs>{
  int topbarselection=1;
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    var eventslog='';
    return Scaffold(
      backgroundColor:clubsansosbackground,
      body: ListView(
        children: [
          SizedBox(height: 15,),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: screensize.width*0.01),
                child:  Align(
                  alignment: AlignmentDirectional.topStart,
                  child:  Text('Clubs & Societies',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Variable',
                        color: Colors.black,
                        fontWeight:FontWeight.w700,
                        fontSize: 28
                    ),
                  ) ,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: screensize.width*0.231,top: 5),
                child: Image.asset('images/mvc/blue.png'),
              ),
              InkWell(
                onTap: (){
                },
                child: Container(
                  margin: EdgeInsets.only(left: screensize.width*0.049,top: 5),
                  height: 31,
                  width: 31,
                  decoration: BoxDecoration(
                    // border: Border.all(width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(100))
                  ),
                  child:  Align(
                      alignment: AlignmentDirectional.center,
                      child:Image.asset('images/mvc/eventlogo.png')
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: screensize.height*0.02,),
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
                        (context) => clubs(),));
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
                    child:  Text('Socities',
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
                          (context) => societies(),));
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
                      child:  Text('Clubs',
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
          SizedBox(height: 24,),
          Card(
            elevation:5,
            color: Colors.white,
            margin:EdgeInsets.only(left: 16,right:16),
            child: Container(
                height:202,
                width:343,
                child:ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context,index){
                      print('----------------------------------------');
                      print('----------------------------------------');
                      print('---------------${index}---------------');
                      print('----------------------------------------');
                      print('----------------------------------------');
                      return Column(children: [
                       InkWell(
                         onTap: (){
                           Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>
                        clubsocietyname(
                     cluborsosname:'Name goes here'),));
                         },
                         child: Container(
                              margin: EdgeInsets.only(top: 11,bottom: 11),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 8),
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        color:chatscolors2
                                    ),
                                    child: Text(''),
                                  ),
                                  InkWell(
                                    onTap: (){
                                   Navigator.push(context,
                                   MaterialPageRoute(builder: (context) =>
                                   clubsocietyname(
                               cluborsosname:'Name goes here'
                                   ),));
                                    },
                                    child: Container(
                                      margin:EdgeInsets.only(left: 6),
                                      child:  Align(
                                        alignment:AlignmentDirectional.center,
                                        child: Text('Name goes here',
                                          style:TextStyle(
                                              fontFamily: 'Satoshi-Medium',
                                              color:event2colors,
                                              fontWeight:FontWeight.w700,
                                              fontSize: 13
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                       ),
                      ],);})
            ),
          )
        ],
      ),
    );
  }

}