import 'package:awesome_dialog/awesome_dialog.dart';

import 'package:flutter/material.dart';
import '../../../color.dart';
import '../../../mvc/ui/menupages/Universitydetails.dart';
import '../../../mvc/welcometoecampus.dart';
import '../../mainpage.dart';
import 'editprofile.dart';
class Account extends StatefulWidget{
  List datalst=[];
  Account({required this.datalst});
  @override
  State<StatefulWidget> createState() {
    return _Accountstate(datalst: this.datalst);
  }
}
class _Accountstate extends State<Account>{
  List datalst=[];
  
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
  _Accountstate({required this.datalst});
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
   return Scaffold(
     backgroundColor: profilebackgroudcolors,
     body: ListView(
       children: [
         Container(
           alignment: AlignmentDirectional.topStart,
           margin: EdgeInsets.only(left: screensize.width*0.05,top: 15),
           child: InkWell(
               onTap: (){
                 Navigator.pop(context);
               },
               child: Image.asset('images/mvc/coloredbackarrow.png')),
         ),
         Row(
           children: [
             Container(
               margin: EdgeInsets.only(left: screensize.width*0.1),
               child:  Align(
                 alignment: AlignmentDirectional.topStart,
                 child:  Text('Account',
                   style: TextStyle(
                       fontFamily: 'Satoshi-Medium',
                       color: Colors.black,
                       fontWeight:FontWeight.w700,
                       fontSize: 32
                   ),
                 ) ,
               ),
             ),
           ],
         ),
         //three rows
         SizedBox(height: screensize.height*0.019,),
         Card(
           margin: EdgeInsets.only(right: screensize.width*0.07,
               left: screensize.width*0.07),
           elevation: 1,
           child: Container(
             width: screensize.width*0.5,
             height: 159,
             decoration: BoxDecoration(
                 color: Colors.white
             ),
             child:InkWell(onTap: (){
               print("three rows");
             },
                 child: Align(
                   alignment: AlignmentDirectional.centerStart,
                   child: Column(
                     children: [
                       Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                                 top: 10,bottom: 10),
                             child: Image.asset('images/mvc/sitting/profilepersonicon.png',
                             height:18 ,
                             width: 14,
                             ),
                           ),
                           SizedBox(width: 2,),
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.01,
                                 top: 10,bottom: 10),
                             child:  InkWell(
                               onTap: (){
                                 Navigator.push(context, MaterialPageRoute(
                                   builder: (context) => editprofile(
                                     datalst:datalst,
                                     gender: 'male',
                                   ),));
                               },
                               child: Text('Personal details',
                                 style: TextStyle(
                                     fontFamily: 'Satoshi-Medium',
                                     color: Colors.black,
                                     fontWeight:FontWeight.w400,
                                     fontSize: 12
                                 ),
                               ),
                             ),
                           ),
                         ],
                       ),
                       //end first row
                       Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                                 top: 10,bottom: 10),
                             child: Image.asset('images/mvc/sitting/profiluniversityicon.png'
                               ,
                               height:18,
                               width: 22.5,),
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               InkWell(
                                 onTap: (){
                                   Navigator.push(context,
                                   MaterialPageRoute(builder: (context) =>
                                       Universitydetails(datalst:datalst),));
                                 },
                                 child: Container(
                                   margin: EdgeInsets.only(left: screensize.width*0.01,
                                       top: 10,bottom: 10),
                                   child:  Text('University details',
                                     style:TextStyle(
                                         fontFamily: 'Satoshi-Medium',
                                         color: Colors.black,
                                         fontWeight:FontWeight.w400,
                                         fontSize: 12
                                     ),
                                   ),
                                 ),
                               ),
                               Container(
                                 height: 18,
                                 width: 68, margin: EdgeInsets.only(right: 10,
                                   left: screensize.width*0.30),
                                 decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(68),
                                     color: notverifiedcolors
                                 ),
                                 child:     Text('Not verified',
                                   style: TextStyle(
                                       fontFamily: 'Satoshi-Medium',
                                       color: notverifiedtextcolors,
                                       fontWeight:FontWeight.w500,
                                       fontSize: 13
                                   ),
                                 ),
                               )
                             ],
                           )
                         ],
                       ),
                       //end Second row
                       Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                                 top: 10,bottom: 10),
                             child: Image.asset('images/mvc/sitting/profilepepicon.png'
                               ,
                               height:18 ,
                               width: 22.5,),
                           ),
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.01,
                                 top: 10,bottom: 10),
                             child:  Text('Clubs & Societies',
                               style: TextStyle(
                                   fontFamily: 'Satoshi-Medium',
                                   color: Colors.black,
                                   fontWeight:FontWeight.w400,
                                   fontSize: 12
                               ),
                             ),
                           ),
                           //end three rows
                         ],
                       ),
                     ],
                   ),
                 )),
           ),
         ),
         //end Third row
         //three rows twice
         SizedBox(height: screensize.height*0.019,),
         Card(
           elevation: 1,
           margin: EdgeInsets.only(right: screensize.width*0.07,left: screensize.width*0.07),

           child: Container(
             width: screensize.width*0.5,
             height: 149,
             decoration: BoxDecoration(
                 color: Colors.white
             ),
             child:InkWell(onTap: (){
               print("three rows");
             },
                 child: Align(
                   alignment: AlignmentDirectional.centerStart,
                   child: Column(
                     children: [
                       Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                                 top: 10,bottom: 10),
                             child: Image.asset('images/mvc/sitting/profilefirsticon.png'
                               ,
                               height:18 ,
                               width: 14,),
                           ),
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.015,
                                 top: 10,bottom: 10),
                             child:  InkWell(
                               onTap: (){
                                 Navigator.push(context, MaterialPageRoute(builder:
                                     (context) => Account(datalst:datalst),));
                               },
                               child: Text('Documents',
                                 style:TextStyle(
                                     fontFamily: 'Satoshi-Medium',
                                     color: Colors.black,
                                     fontWeight:FontWeight.w400,
                                     fontSize: 12
                                 ),
                               ),
                             ),
                           ),
                         ],
                       ),
                       //end first row
                       Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                                 top: 10,bottom: 10),
                             child: Image.asset('images/mvc/sitting/profilesecondicon.png',
                               height:18 ,
                               width: 14,),
                           ),
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.015,
                                 top: 10,bottom: 10),
                             child:  Text('Privcy policy',
                               style:TextStyle(
                                   fontFamily: 'Satoshi-Medium',
                                   color: Colors.black,
                                   fontWeight:FontWeight.w400,
                                   fontSize: 12
                               ),
                             ),
                           ),
                         ],
                       ),
                       //end Second row
                       Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.05,
                                 top: 10,bottom: 10),
                             child: Image.asset('images/mvc/sitting/profileesticon.png',
                               height:18 ,
                               width: 14,),
                           ),
                           Container(
                             margin: EdgeInsets.only(left: screensize.width*0.015,
                                 top: 10,bottom: 10),
                             child:  Text('Terms & conditions',
                               style:TextStyle(
                                   fontFamily: 'Satoshi-Medium',
                                   color: Colors.black,
                                   fontWeight:FontWeight.w400,
                                   fontSize: 12
                               ),
                             ),
                           ),
                           //end three rows
                         ],
                       ),
                     ],
                   ),
                 )),
           ),
         ),
         //end Third row twice
         SizedBox(height: screensize.height*0.019,),
         Card(
           margin: EdgeInsets.only(right: screensize.width*0.07,left: screensize.width*0.07),
           elevation: 1,
           child: Container(
             width: screensize.width*0.5,
             height: 44,
             decoration: BoxDecoration(
                 color: Colors.white
             ),
             child:InkWell(onTap: () async{
               AwesomeDialog(
                 context: context,
                 dialogType: DialogType.info,
                 borderSide: const BorderSide(
                   color: Colors.green,
                   width: 2,
                 ),
                 width: 280,
                 buttonsBorderRadius: const BorderRadius.all(
                   Radius.circular(2),
                 ),
                 dismissOnTouchOutside: true,
                 dismissOnBackKeyPress: false,
                 headerAnimationLoop: false,
                 animType: AnimType.bottomSlide,
                 title: 'تحذير(attention)',
                 desc: ' This operation is sensitive and requires recent authentication.'
                     'Logout first then Login again before delete your account.'
                     '  هذا الخيار يؤدي الى حذف حسابك',
                 showCloseIcon: true,
                 btnCancelOnPress: () {
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context) => mainpage(),));
                 },
                 btnOkOnPress: () async{
                 //  User? user = FirebaseAuth.instance.currentUser;
                
                     AwesomeDialog(
                       context: context,
                       dialogType: DialogType.info,
                       borderSide: const BorderSide(
                         color: Colors.green,
                         width: 2,
                       ),
                       width: 280,
                       buttonsBorderRadius: const BorderRadius.all(
                         Radius.circular(2),
                       ),
                       dismissOnTouchOutside: true,
                       dismissOnBackKeyPress: false,
                       headerAnimationLoop: false,
                       animType: AnimType.bottomSlide,
                       title: 'تم حذف حسابك ',
                       desc: 'your account was deleted'
                           'you will back to welcome screen.',
                       showCloseIcon: true,
                       btnCancelOnPress: () {},
                       btnOkOnPress: () {},
                     ).show().then((value){
                       Navigator.push(context, MaterialPageRoute(builder:
                           (context) => welcometoecampus(),));
                     });

                
                 },
               ).show().then((value) async{
                 print('done');
               }
               );
             },
                 child: Align(
                   alignment: AlignmentDirectional.centerStart,
                   child: Row(
                     children: [
                       Container(
                         margin: EdgeInsets.only(left: screensize.width*0.05,
                             top: 10,bottom: 10),
                         child: Image.asset('images/mvc/sitting/profilexicon.png',
                           height:18 ,
                           width: 14,),
                       ),
                       Container(
                         margin: EdgeInsets.only(left: screensize.width*0.015,
                             top: 10,bottom: 10),
                         child:  Text('Close account',
                           style:TextStyle(
                               fontFamily: 'Satoshi-Medium',
                               color: accountfinaltxtcolors,
                               fontWeight:FontWeight.w400,
                               fontSize: 12
                           ),
                         ),
                       ),
                     ],
                   ),
                 )),
           ),
         ),
       ],
     ),
   );
  }

}
