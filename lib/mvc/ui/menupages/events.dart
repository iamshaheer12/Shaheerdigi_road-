import 'package:flutter/material.dart';

import '../../../color.dart';
import '../../../studentpage/mainpage.dart';

class event extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _eventstate();
  }
}
class _eventstate extends State<event>{
  int topbarselection=2;
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    var eventslog='';
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: screensize.width*0.1),
                  child:  Align(
                    alignment: AlignmentDirectional.topStart,
                    child:  Text('Campus',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Variable',
                          color: Colors.black,
                          fontWeight:FontWeight.w700,
                          fontSize: 32
                      ),
                    ) ,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: screensize.width*0.31),
                  child: Image.asset('images/mvc/blue.png'),
                ),
                InkWell(
                  onTap: (){
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: screensize.width*0.049),
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
            SizedBox(height: screensize.height*0.06,),
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
                          (context) => mainpage(),));
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
                      child:  Text('Feed',
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
                            (context) => event(),));
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
                        child:  Text('Events',
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

            SizedBox(height: 25,),
                ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,

                    //scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context,index){
                      print('----------------------------------------');
                      print('----------------------------------------');
                      print('---------------${index}---------------');
                      print('----------------------------------------');
                      print('----------------------------------------');
                      return Column(
                        children: [
                          SizedBox(height: 15,),
                      InkWell(
                        onTap: (){
                          ///clubsocietyname
                        },
                        child: Row(
                        children: [
                        Container(
                        width: 40,
                          height: 40,
                          margin: EdgeInsets.only(left: 17),
                          decoration: BoxDecoration(
                            color:event3colors,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          // child: Center(child: Image.asset('images/$img')),
                        ),
                        Container(
                          width: screensize.width*0.8
                          ,child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Align(
                          alignment: AlignmentDirectional.topStart,
                          child:Container(
                          margin: EdgeInsets.only(left: screensize.width*0.01,
                          ),
                          child:  Column(
                          children: [
                          Container(
                            margin: EdgeInsets.only(left: screensize.width*0.001,
                            ),
                            child: Text('Event name',
                            style:TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: Colors.black,
                            fontWeight:FontWeight.w700,
                            fontSize: 13
                            ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: screensize.width*0.001,
                            ),
                            child: Text('Organizer',
                            style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: event2colors,
                            fontWeight:FontWeight.w400,
                            fontSize: 10
                            ),
                            ),
                          )
                          ],
                          ),
                          ),
                          ),
                          Container(
                            margin:EdgeInsets.only(right: 20)
                            ,child: Text('15/01/2023',
                            style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: event2colors,
                            fontWeight:FontWeight.w400,
                            fontSize: 10
                            ),
                            ),
                          )
                          ],
                          ),
                        )
                        ],
                        ),
                      ),
                      SizedBox(height: 15,)
                        ],
                      );
                    })
          ],
        ),
      ),
    );
  }

}