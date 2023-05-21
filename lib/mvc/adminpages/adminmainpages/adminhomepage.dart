// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../color.dart';
import '../../ClubsSocieties/addtheme/createpost.dart';
import '../../ClubsSocieties/profile/linkedaccounts.dart';
import '../../ClubsSocieties/profile/mvcprofile.dart';
import '../../ClubsSocieties/profile/pageaccess.dart';
import 'aboutadminpage.dart';
class adminhomepage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _adminhomepagestate();
  }
}
class _adminhomepagestate extends State<adminhomepage>{
  // CollectionReference users = FirebaseFirestore.instance.collection('adminuser');
  // var crnuser=FirebaseAuth.instance.currentUser;
  var docsvalue;
  List datalst=[];
  bool isloaded=false;
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundadminaboutcolors,
      body: ListView(
        children: [
          SizedBox(height: screensize.height*0.003,),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(left: screensize.width*0.009,
                      top: 10
                  ),
                  ///Members
                  child:    InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>
                          mvcprofile(),));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 16,top: 15
                      ),
                      height: 31,
                      width: 31,
                      decoration: BoxDecoration(
                          color: circleprriscolors,
                          // border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(100))
                      ),
                      child:  Align(
                        alignment: AlignmentDirectional.center,
                        child:  Text('First Name ',
                          style: TextStyle(
                              fontFamily: 'Satoshi-Variable',
                              color: Colors.white,
                              fontWeight:FontWeight.w700,
                              fontSize: 13
                          ),
                        ) ,
                      ),
                    ),
                  )),
              SizedBox(width: screensize.width*0.20,),
              Container(
                margin: EdgeInsets.only(left: screensize.width*0.05,top: 33),
                alignment: AlignmentDirectional.center,
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child:  Text('Home',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: adminaboutcolors,
                        fontWeight:FontWeight.w700,
                        fontSize: 17
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap:(){
                  Navigator.push(context,
                  MaterialPageRoute(builder:
                  (context) =>createpost()));
                },
                child: Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Container(
                    width: 59,
                    height: 29.5,
                    margin: EdgeInsets.
                    only(top: 33,left: screensize.width*0.31,right: 22),
                    decoration: BoxDecoration(
                      color:splashcolor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional.center,
                      child:  Text('New Post',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: Colors.white,
                            fontWeight:FontWeight.w700,
                            fontSize: 10
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: screensize.height*0.009,),
          Container(
            margin: EdgeInsets.only(left: screensize.width*0.04),
            child:  Align(
              alignment: AlignmentDirectional.topStart,
              child:  Text('Today',
                style: TextStyle(
                    fontFamily: 'Satoshi-Variable',
                    color: adhomeiscolors,
                    fontWeight:FontWeight.w600,
                    fontSize: 15
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Card(
            margin: EdgeInsets.only(right: 15,left: 15),
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              width: 343,
              height: 98,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
               Container(
              margin: EdgeInsets.only(left: 14,top: 10),
              child:Align(
                alignment: AlignmentDirectional.topStart,
                child:  Text('£ 0.00',
                style: TextStyle(
                fontFamily: 'Satoshi-Medium',
                color: adhomeiscolors2,
                fontWeight:FontWeight.w500,
                fontSize: 40
                  ),
                ),
              ),
            ),
                      Container(
                        margin: EdgeInsets.only(right: 83,top: 10),
                        child:Align(
                          alignment: AlignmentDirectional.topStart,
                          child:  Text('0',
                            style: TextStyle(
                                fontFamily: 'Satoshi-Medium',
                                color: adhomeiscolors2,
                                fontWeight:FontWeight.w500,
                                fontSize: 40
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 14,top: 10),
                        child:Align(
                          alignment: AlignmentDirectional.topStart,
                          child:  Text('Budget',
                            style: TextStyle(
                                fontFamily: 'Satoshi-Medium',
                                color: adhomeiscolors2,
                                fontWeight:FontWeight.w700,
                                fontSize: 13
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 53,top: 10),
                        child:Align(
                          alignment: AlignmentDirectional.topStart,
                          child:  Text('Members',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: adhomeiscolors2,
                        fontWeight:FontWeight.w700,
                        fontSize: 13
                    ),
                  ),
                ),
              ),
                    ],
                  ),
                ],
              ),
            ),
          ),
         ///second one
          SizedBox(height: 15,),
    Card(
    margin: EdgeInsets.only(right: 15,left: 15),
    elevation: 1,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15)
    ),
    child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: Colors.white,
    ),
    width: 343,
    height: 59,
    child: Row(
      children: [
        Container(
     margin:EdgeInsets.only(left: 14),
     child: Image.asset('images/mvc/events.png'),
        ),
        Container(
       margin:EdgeInsets.only(
       left: 10,
       top: 20),
       child: Align(
          alignment: AlignmentDirectional.topStart,
          child:  Text('Events',
            style: TextStyle(
                fontFamily: 'Satoshi-Medium',
                color: adhomeiscolors2,
                fontWeight:FontWeight.w700,
                fontSize: 13
            ),
          ),
        ),)
      ],
    ),
    )
    ),
    SizedBox(height: 15,) ,
    InkWell(
      onTap:(){
        ///pageaccess
        Navigator.push(context,
        MaterialPageRoute(builder: (context) => pageaccess(),));
      },
      child: Card(
          margin: EdgeInsets.only(right: 15,left: 15),
          elevation: 1,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            width: 343,
            height: 76,
            child: Row(
              children: [
        Container(
          margin:EdgeInsets.only(left: 14),
          child: Image.asset('images/mvc/sitting/User Security.png'
          ,
          height: 30,
          width: 30,
          ),
        ),
        Container(
          width: 313,
          height: 76,
          child: Column(
            children: [
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Container(
                  margin:EdgeInsets.only(
                      left: 14,
                      top: 20),
                  child:Text('Page access',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: adhomeiscolors2,
                          fontWeight:FontWeight.w700,
                          fontSize: 13
                      ),
                    ),
                  ),
                ),
              Container(
                margin:EdgeInsets.only(
                    right: 9
                    ),
                child: Text('Invite people to help manage your page andcontrol ',
                  style: TextStyle(
                  fontFamily: 'Satoshi-Medium',
                  color: Color(0xFF808080),
                  fontWeight:FontWeight.w700,
                  fontSize: 12
                    ),
                  ),
                ),
              Container(
                margin:EdgeInsets.only(
                   right: 9
                ),
                child: Text('who can access it.',
                  style: TextStyle(
                      fontFamily: 'Satoshi-Medium',
                      color: Color(0xFF808080),
                      fontWeight:FontWeight.w700,
                      fontSize: 12
                  ),
                ),
              ),
      ],
                  ),
        )
              ],
            ),
          )
      ),
    ),
     ///this is last card
  SizedBox(height: 15,) ,
  InkWell(
    onTap:(){
     ///linkedaccounts
     Navigator.push(context,
     MaterialPageRoute(builder: (context) => linkedaccounts(),));
    },
    child: Card(
        margin: EdgeInsets.only(right: 15,left: 15),
        elevation: 1,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          width: 343,
          height: 76,
          child: Row(
            children: [
        Container(
          margin:EdgeInsets.only(left: 14),
          child: Image.asset('images/mvc/sitting/link.png',
            height: 30,
            width: 30,
          ),
        ),
      Container(
        width: 313,
        height: 76,
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Container(
                margin:EdgeInsets.only(
                    left: 14,
                    top: 20),
      child:Text('Linked accounts',
        style: TextStyle(
            fontFamily: 'Satoshi-Medium',
            color: adhomeiscolors2,
            fontWeight:FontWeight.w700,
            fontSize: 13
        ),
            ),
          ),
        ),
        Container(
          margin:EdgeInsets.only(
              right: 9
          ),
          child: Text('Engage with your community across WhatsApp,     ',
            style: TextStyle(
                fontFamily: 'Satoshi-Medium',
                color: Color(0xFF808080),
                fontWeight:FontWeight.w700,
                fontSize: 12
            ),
          ),
        ),
      Container(
        margin:EdgeInsets.only(
            right: 9
        ),
        child: Text(' Instagram and Facebook',
        style: TextStyle(
        fontFamily: 'Satoshi-Medium',
        color: Color(0xFF808080),
        fontWeight:FontWeight.w700,
        fontSize: 12
          ),
        ),
      ),
    ],
),
)
              ],
            ),
          )
            ),
  ),
          SizedBox(height: 24,),
          Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Container(
             margin: EdgeInsets.
             only(left: 15),
            child: Align(
              alignment:AlignmentDirectional.topStart,
              child: Text('Report overview',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight:FontWeight.w700,
                    fontSize: 17
                ),
              ),
            ),
           ),
           Container(
             margin: EdgeInsets.
             only(right: 15),
             child: Align(
               alignment:AlignmentDirectional.topStart,
               child: Text('Edit',
                 style: TextStyle(
                     fontFamily: 'Satoshi-Medium',
                     color: splashcolor,
                     fontWeight:FontWeight.w700,
                     fontSize: 10
                 ),
               ),
             ),
           )
         ],
          )
        ],
      ),
    );
  }

}


