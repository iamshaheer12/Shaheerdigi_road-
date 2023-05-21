import 'package:flutter/material.dart';

import '../../color.dart';
import '../../studentpage/ui/homepages/profilepage.dart';
import 'eventviewcontroller.dart';
///clubsocietyname.dart
class clubsocietyname extends StatefulWidget {
  var cluborsosname='Name goes here';
 
  clubsocietyname({required this.cluborsosname});
  @override
  State<StatefulWidget> createState() {
   return _clubsocietyname(cluborsosname: this.cluborsosname);
  }
}
class _clubsocietyname extends State<clubsocietyname>{
  var cluborsosname='Name goes here';
  bool isjoined=false;
  _clubsocietyname({required this.cluborsosname});
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
   return Scaffold(
     body: ListView(
       children: [
         Stack(
           children: [
             Container(
               height:142,
               width: screensize.width,
               decoration:BoxDecoration(
                 image: DecorationImage(
                   fit:BoxFit.fill,
                   image: AssetImage('images/mvc/image 110.png',),
                 ),
               ),

             ),
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
               width:84,
               height:84,
               margin: EdgeInsets.only(top: 100,left: 23),
               decoration:BoxDecoration(
                   border: Border.all(
                       width: 1,
                       color: Colors.white
                   ),
                   borderRadius: BorderRadius.circular(100),
                   image: DecorationImage(
                       image: AssetImage('images/mvc/bg.png'),
                       fit: BoxFit.fill
                   )
               ),

             )
           ],
         ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin:EdgeInsets.only(left:20,top:14),
              child: Align(
                alignment: AlignmentDirectional.topStart,
                child:Text('Club/Society Name',
                  style: TextStyle(
                      fontFamily: 'Satoshi-Variable',
                      color: Colors.black,
                      fontWeight:FontWeight.w700,
                      fontSize: 16
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right:15),
              child: Image.asset('images/mvc/chat 02.png'),
            )
          ],
        ),
         Container(
           margin:EdgeInsets.only(left:20,top:14,
               right: 59,),
           child: Align(
             alignment: AlignmentDirectional.topStart,
             child:Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus.',
               style: TextStyle(
                   fontFamily: 'Satoshi-Medium',
                   color: Colors.black,
                   fontWeight:FontWeight.w500,
                   fontSize: 13
               ),
             ),
           ),
         ),
         Container(
           margin:EdgeInsets.only(left: 20,top: 14,right: screensize.width*0.8),
           height:14,
           width:58,
           decoration:BoxDecoration(
             borderRadius: BorderRadius.circular(25)
             ,color:btnbusbackground
           ),
           child: Align(
             alignment: AlignmentDirectional.topStart,
             child:Row(
               mainAxisAlignment:MainAxisAlignment.center,
               children: [
                 Container(
                   margin: EdgeInsets.only(top: 1.2),
                   child: Image.asset(
                     'images/mvc/sitting/Business.png'
                   ),
                 ),
                 Container(
                   margin: EdgeInsets.only(top: 1.2),
                   child: Text('Business',
                     style: TextStyle(
                         fontFamily: 'Satoshi-Medium',
                         color: Colors.black,
                         fontWeight:FontWeight.w500,
                         fontSize:8
                     ),
                   ),
                 ),
               ],
             )
           ),
         ),
         InkWell(
           onTap:(){
             setState(() {
               isjoined=!isjoined;
             });
           },
           child:isjoined==false?Card(
             elevation: 2,
             margin:EdgeInsets.only(top: 22,left: 102,right: 103),
             shape: RoundedRectangleBorder(borderRadius:
             BorderRadius.circular(4)),
             child: Container(
               alignment:AlignmentDirectional.center,
              width:170,
              height:30,
              decoration:BoxDecoration(
                color:chatscolors2,
                borderRadius: BorderRadius.circular(4)
              ),
             child: Center(
               child:Text('Join',
                 style: TextStyle(
                     fontFamily: 'Satoshi-Variable',
                     color: Colors.white,
                     fontWeight:FontWeight.w700,
                     fontSize:13
                 ),
               ),
             ),
             ),
           ):Card(
             elevation: 2,
             margin:EdgeInsets.only(top: 22,left: 102,right: 103),
             shape: RoundedRectangleBorder(borderRadius:
             BorderRadius.circular(4)),

             child: Container(
               alignment:AlignmentDirectional.center,
               width:170,
               height:30,
               decoration:BoxDecoration(
                   color:readleavecolorbackgroung,
                   borderRadius: BorderRadius.circular(4)
               ),
               child: Center(
                 child:Text('Leave',
                   style: TextStyle(
                       fontFamily: 'Satoshi-Variable',
                       color:readleavecolor,
                       fontWeight:FontWeight.w700,
                       fontSize:13
                   ),
                 ),
               ),
             ),
           ),
         ),
         Container(
         margin:EdgeInsets.only(left:16,top: 32),
         child:Text('Events/Schedule',
           style: TextStyle(
               fontFamily: 'Satoshi-Variable',
               color: Colors.black,
               fontWeight:FontWeight.w700,
               fontSize:16
           ),
         ),
         ),
         SizedBox(height: 15,),
    ///events build
    ListView.builder(
    itemCount:2,
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
        Row(
          children: [
            InkWell(
              onTap:() {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) =>
                eventviewpage(eventtitle: 'Event title'),));
              },
              child: Container(
                margin: EdgeInsets.only(left: 16),
                width: 75,
                height:57,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                ),
               child: Image.asset(
                 'images/mvc/sitting/Frame 48095673.png',
                 fit: BoxFit.fill,
               ),
              ),
            ),
            Column(
              children: [
                InkWell(
                  onTap:() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>
                            eventviewpage(eventtitle: 'Event title'),));
                  },
                  child: Container(
                   // margin:EdgeInsets.only(right:11),
                    alignment:AlignmentDirectional.topStart,
                    child:Align(
                      alignment:AlignmentDirectional.topStart,
                      child: Text('Event title       ',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: splashcolor,
                            fontWeight:FontWeight.w500,
                            fontSize:12
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap:() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>
                            eventviewpage(eventtitle: 'Event title'),));
                  },
                  child: Container(
                    margin:EdgeInsets.only(left:11),
                    child:Text('Date and time',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Variable',
                          color:abckground,
                          fontWeight:FontWeight.w700,
                          fontSize:13
                      ),
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
        SizedBox(height: 7,)
           ],
         );
         }
        ),
        Container(
        margin: EdgeInsets.only(left: 16,top: 19),
        child:Align(
          alignment:AlignmentDirectional.topStart,
          child: Text('Meet the team',
            style: TextStyle(
                fontFamily: 'Satoshi-Variable',
                color: event2colors,
                fontWeight:FontWeight.w700,
                fontSize:16
            ),
          ),
        ),
        ),
         SizedBox(height: 16,),
    ListView.builder(
    itemCount:3,
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
       Row(
         children: [
           Container(
               margin: EdgeInsets.only(left:16),
               height: 36,
               width: 36,
               decoration: BoxDecoration(
                   color: splashcolor,
                   border: Border.all(width: 1),
                   borderRadius: BorderRadius.all(Radius.circular(100))
               ),
               child:  Align(
                 alignment: AlignmentDirectional.center,
                 child:  Text('First name ',
                   style: TextStyle(
                       fontFamily: 'Satoshi-Variable',
                       color: Colors.white,
                       fontWeight:FontWeight.w700,
                       fontSize: 13
                   ),
                 ) ,
               ),
             ),
           Column(
             children: [
               Container(
                 // margin:EdgeInsets.only(right:11),
                 alignment:AlignmentDirectional.topStart,
                 child:Align(
                   alignment:AlignmentDirectional.topStart,
                   child: Text('Full name                       ',
                     style: TextStyle(
                         fontFamily: 'Satoshi-Variable',
                         color:Colors.black,
                         fontWeight:FontWeight.w700,
                         fontSize:16
                     ),
                   ),
                 ),
               ),
               Container(
                 margin:EdgeInsets.only(left:11),
                 child:Text('Position/Title in club/Society',
                   style: TextStyle(
                       fontFamily: 'Satoshi-Variable',
                       color:abckground,
                       fontWeight:FontWeight.w700,
                       fontSize:13
                   ),
                 ),
               ),
             ],
           )
         ],
       ),
       SizedBox(height: 10,)
      ],
    );
    }
    ),
     Container(
       margin: EdgeInsets.only(left: 16,top: 19),
       alignment:AlignmentDirectional.topStart,
       child:Align(
         alignment:AlignmentDirectional.topStart,
         child: Text('Social network',
           style: TextStyle(
               fontFamily: 'Satoshi-Variable',
               color:event2colors,
               fontWeight:FontWeight.w700,
               fontSize:16
           ),
         ),
       ),
     ),
    Row(
      children: [
       Container(
         margin: EdgeInsets.only(left: 16,top: 17),
         alignment:AlignmentDirectional.topStart,
         child: Image.asset('images/mvc/sitting/Vector.png'),
       ),
        Container(
          margin: EdgeInsets.only(left: 12,top: 17),
          alignment:AlignmentDirectional.topStart,
          child: Image.asset('images/mvc/sitting/Twitter 2.png'),
        ),
        Container(
          margin: EdgeInsets.only(left: 12,top: 17),
          alignment:AlignmentDirectional.topStart,
          child: Image.asset('images/mvc/sitting/Instagram.png'),
        ),
      ],
    )   
       ],
     ),
   );
  }

}