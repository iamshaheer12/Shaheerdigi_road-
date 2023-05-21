///calendar
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../color.dart';
import '../../ClubsSocieties/profile/listingmvc.dart';
class calendar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _calendarstate();
  }
}
class _calendarstate extends State<calendar>{
  // CollectionReference users = FirebaseFirestore.instance.collection('adminuser');
  // var crnuser=FirebaseAuth.instance.currentUser;
  var docsvalue;
  List datalst=[];
  bool isloaded=false;
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
      body:ListView(
        children: [
          SizedBox(height: screensize.height*0.003,),
          Row(
            ///Products
            children: [
              SizedBox(width: screensize.width*0.34,),
              Container(
                margin: EdgeInsets.only(left: screensize.width*0.05,top: 33),
                alignment: AlignmentDirectional.center,
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child:  Text('Calendar',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: adminaboutcolors,
                        fontWeight:FontWeight.w700,
                        fontSize: 17
                    ),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: screensize.width*0.28,
                      top: 10
                  ),
                  ///Members
                  child:    InkWell(
                    onTap: (){///listingmvc
                    Navigator.push(context,MaterialPageRoute(builder:
                    (context) => listingmvc(),));
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
                        child: Image.asset(
                            'images/mvc/sitting/add-new.png'
                        ),
                      ),
                    ),
                  )),
            ],
          ),
          SizedBox(height: screensize.height*0.40,),
          Center(
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Image.asset(
                  'images/mvc/sitting/Profile pic.png'
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.center,
            child:  Text('Add your first event',
              style: TextStyle(
                  fontFamily: 'Satoshi-Medium',
                  color: adminaboutcolors,
                  fontWeight:FontWeight.w700,
                  fontSize: 17
              ),
            ),
          ),
          ///calendar
          Align(
            alignment: AlignmentDirectional.center,
            child:  Text('All events that have been created will show up here.',
              style: TextStyle(
                  fontFamily: 'Satoshi-Medium',
                  color: Color(0xFFDADBDB),
                  fontWeight:FontWeight.w700,
                  fontSize: 12
              ),
            ),
          ),
        ],
      ),
    );
  }
}