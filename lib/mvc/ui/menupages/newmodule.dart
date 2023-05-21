//newmodule.dart
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../color.dart';

class newmodule extends StatefulWidget {
  List datalst=[];
  newmodule({required this.datalst});
  @override
  State<StatefulWidget> createState() {
     return _newmodulestate(datalst: this.datalst);
  }
}
class _newmodulestate extends State<newmodule>{
  List datalst=[];
  _newmodulestate({required this.datalst});
  // CollectionReference users = FirebaseFirestore.instance.collection('user');
  // var crnuser=FirebaseAuth.instance.currentUser;
  var docsvalue;
  // getdata()async{
  //   var myprofiledata=FirebaseFirestore.instance.collection('user');
  //   await  myprofiledata.where('username',isEqualTo: '${crnuser!.email.toString()}');
  //   var response=await myprofiledata.get().then((value){
  //     value.docs.forEach((element) {
  //       print('=================================');
  //       print('=================================');
  //       print(element.data());
  //       print('=================================');
  //       print('=================================');
  //       setState(() {
  //         docsvalue=element.id;
  //         datalst.add(element.data());
  //       });
  //     });
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
   // var crnuser=FirebaseAuth.instance.currentUser;
    return Scaffold(
      body: ListView(children: [
        SizedBox(height: 15,),
        Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: AlignmentDirectional.topStart,
              margin: EdgeInsets.only(left: screensize.width*0.03),
              child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Image.asset('images/mvc/x.png')),
            ),
           Container(
              margin: EdgeInsets.only(left: screensize.width*0.35),
              child:  Align(
                alignment: AlignmentDirectional.center,
                child: Text('Edit Modules',
                  style:TextStyle(
                      fontFamily: 'Satoshi-Medium',
                      color: Colors.black,
                      fontWeight:FontWeight.w700,
                      fontSize: 17
                  ),
                ) ,
              ),
            ),
          ],
        ),
        ///this is end of edit
        //first contianer
        SizedBox(height: 15,),
        Container(
          margin: EdgeInsets.only(left: screensize.width*0.05,
              right: screensize.width*0.05),
          height: 32,
          width: screensize.width*0.7,
          child: Center(
            child: Row(
              children: [
                //smallmed.png
                Container(
                  margin: EdgeInsets.only(left: screensize.width*0.06),
                  child: Image.asset('images/searchformar.png',
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: screensize.width*0.03,
                  ),
                  child:  Text('Search in marketplace',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: Colors.black,
                        fontWeight:FontWeight.w400,
                        fontSize: 12
                    ),
                  ),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
              color: splashgragy2,
              borderRadius: BorderRadius.circular(25)
          ),
        ),
      ],),
    );
  }

}