
import 'package:flutter/material.dart';
import '../../../color.dart';
import '../../../mvc/ClubsSocieties/cubs.dart';
import '../../../mvc/ClubsSocieties/societies.dart';
import '../../../mvc/adminpages/Selectyourstructure.dart';
import '../../../mvc/adminpages/adminmainpages/adminmainpage.dart';
import '../homepages/profilepage.dart';
import 'marketplace.dart';
class menu extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _menustate();
  }
}
class _menustate extends State<menu>{
  String nameCity = "";
   bool ismydropdwonlistclick=false;
 //var crnuser=FirebaseAuth.instance.currentUser;
  List datalst2=[];
  var docsvalue2;
  // getdata()async{
  //   var myprofiledata=FirebaseFirestore.instance.collection('user');

  //   await myprofiledata.where('username',
  //       isEqualTo: '${crnuser!.email.toString()}').
  //   get().then((value){
  //     value.docs.forEach((element) {
  //       print('=================================');
  //       print('=================================');
  //       print(element.data());
  //       print(element.id);
  //       print('${crnuser!.email.toString()}');
  //       print('=================================');
  //       print('=================================');
  //       setState(() {
  //         docsvalue=element.id;
  //         datalst=[];
  //         datalst.add(element.data());
  //       });

  //     });
  //   });
  // // }
  // getadmindata()async{
  //   var myprofiledata2=FirebaseFirestore.instance.collection('adminuser');

  //   await myprofiledata2.where('current username',
  //       isEqualTo: '${crnuser!.email.toString()}').
  //   get().then((value){
  //     value.docs.forEach((element) {
  //       print('=================================');
  //       print('=================================');
  //       print(element.data());
  //       print(element.id);
  //       print('${crnuser!.email.toString()}');
  //       print('=================================');
  //       print('=================================');
  //       setState(() {
  //         docsvalue2=element.id;
  //         datalst2=[];
  //         datalst2.add(element.data());
  //       });

  //     });
  //   });
  // }
  @override
  void initState() {
    

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
   return Scaffold(
     backgroundColor: menubackgroungcolors,
     body: SingleChildScrollView(
       scrollDirection: Axis.vertical,
       child: Column(
         children: [
           SizedBox(height: screensize.height*0.06,),
           Row(
             children: [
               Container(
                 margin: EdgeInsets.only(left: screensize.width*0.1),
                 child:  Align(
                   alignment: AlignmentDirectional.topStart,
                   child:  Text('Menu',
                     style: TextStyle(
                         fontFamily: 'Satoshi-Medium',
                         color: facebooklikecolor,
                         fontWeight:FontWeight.w700,
                         fontSize: 28
                     ),
                   ) ,
                 ),
               ),
             ],
           ),
           SizedBox(height: screensize.height*0.009,),
           ///firstcont
           Card(
             margin: EdgeInsets.only(right:
             screensize.width*0.07,
                 left: screensize.width*0.07),
              elevation: 2,
             child: Container(
               width: screensize.width*0.9,
               height: 60,
               decoration: BoxDecoration(
                   color: Colors.white
               ),
               child:InkWell(onTap: (){
               },
                   child: Align(
                     alignment: AlignmentDirectional.centerStart,
                     child: Column(
                       children: [
                         //end Second row
                    Row(
                     children: [
                       Container(
                       margin: EdgeInsets.only(left: screensize.width*0.009,
                      top: 15
                        ),
                        child:    InkWell(
                         onTap: (){
                          try{
                           /// getadmindata();
    if(datalst2[0]['isadmin']=='true'){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => adminmainpage(),));
                      }else{
      Navigator.push(context, MaterialPageRoute(builder: (context) =>
          Profilepage(),));
              }
              }
              catch(e){
                print('-------------------------');
                print('-------------------------');
                print('eroor is $e--------------');
                print('-------------------------');
                print('-------------------------');
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    Profilepage(),));
                          }
                                 },
                                 child: Container(
                                   margin: EdgeInsets.only(left: screensize.width*0.0049,
                                   ),
                                   height: 30,
                                   width: 30,
                                   decoration: BoxDecoration(
                                       color: splashcolor,
                                      // border: Border.all(width: 1),
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
                               )),

                             Container(
                               margin: EdgeInsets.only(left: screensize.width*0.03,
                                   top: 15),
                               child:  Text('${datalst[0]['Legal first name']}',
                                 style:TextStyle(
                                     fontFamily: 'Satoshi-Medium',
                                     color: Colors.black,
                                     fontWeight:FontWeight.w400,
                                     fontSize: 20
                                 ),
                               ),
                             ),
                             //end three rows
                            SizedBox(width: screensize.width*0.50,),
                             InkWell(
                   onTap: (){
                     setState(() {
                       ismydropdwonlistclick=!ismydropdwonlistclick;
                       print('------------------------------');
                       print('------------------------------');
                       print('------------------------------');
                       print('-----${ismydropdwonlistclick}-------------');
                       print('------------------------------');
                       print('------------------------------');
                       });
                     },
                     child: Container(
                       margin: EdgeInsets.only(
                           top: 20),
                       child: Image.asset('images/genderarrow.png',
                       ),
                     ),
                   ),
                 ],
               ), //twice multi rows
             ],
           ),
         )),
             ),
           ),
           //*********start mamny rows*******************
           //*********start mamny rows*******************
           //*********start mamny rows*******************
           SizedBox(height: 25,),
           ///start Grid views
           ///start Grid views
           SingleChildScrollView(
             scrollDirection: Axis.vertical,
             child:ismydropdwonlistclick==true?Column(
               children: [
         Card(
         elevation: 2,
         margin: EdgeInsets.only(left: screensize.width*0.02,
         right:screensize.width*0.02),
        shape:RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
      ),
       child: Container(
       height: 200,
       width: 353,
       decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
     color: Colors.white
    ),
    child: Column(
      children: [
        Row(
          children: [
            Container(
                margin: EdgeInsets.only(left: screensize.width*0.009,
                    top: 15
                ),
                child:    InkWell(
                  onTap: (){
                    try{
                     // getadmindata();
                      if(datalst2[0]['isadmin']=='true'){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => adminmainpage(),));
                      }else{
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>
                            Profilepage(),));
                      }
                    }
                    catch(e){
                      print('-------------------------');
                      print('-------------------------');
                      print('eroor is $e--------------');
                      print('-------------------------');
                      print('-------------------------');
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>
                          Profilepage(),));
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: screensize.width*0.0049,
                    ),
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: splashcolor,
                        // border: Border.all(width: 1),
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
                )),

            Container(
              margin: EdgeInsets.only(left: screensize.width*0.03,
                  top: 15),
              child:  Text('${datalst[0]['Legal first name']}',
                style:TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight:FontWeight.w400,
                    fontSize: 20
                ),
              ),
            ),
            //end three rows
          ],
        ),
        SizedBox(height: 15,),
        ///second one of list dropdown
        InkWell(
          onTap:(){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => clubs(),));
          },
          child: Row(
            children: [
              Container(
                  margin: EdgeInsets.only(left: screensize.width*0.009,
                      top: 15
                  ),
                  child:    InkWell(
                    child: Container(
                      margin: EdgeInsets.only(left: screensize.width*0.0049,
                      ),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: splashgragy,
                          // border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(100))
                      ),
                      child:  Align(
                        alignment: AlignmentDirectional.center,
                        child:  Text('',
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

              Container(
                margin: EdgeInsets.only(left: screensize.width*0.03,
                    top: 15),
                child:  Text('Club',
                  style:TextStyle(
                      fontFamily: 'Satoshi-Medium',
                      color: Colors.black,
                      fontWeight:FontWeight.w400,
                      fontSize: 16
                  ),
                ),
              ),
            ],
          ),
        ),
        ///last
        InkWell(
          onTap:(){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) =>
           societies(),));
          },
          child: Row(
            children: [
              Container(
                  margin: EdgeInsets.only(left: screensize.width*0.009,
                      top: 15
                  ),
                  child:    InkWell(
                    child: Container(
                      margin: EdgeInsets.only(left: screensize.width*0.0049,
                      ),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: splashgragy,
                          // border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(100))
                      ),
                      child:  Align(
                        alignment: AlignmentDirectional.center,
                        child:  Text('',
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

              Container(
                margin: EdgeInsets.only(left: screensize.width*0.03,
                    top: 15),
                child:  Text('Society',
                  style:TextStyle(
                      fontFamily: 'Satoshi-Medium',
                      color: Colors.black,
                      fontWeight:FontWeight.w400,
                      fontSize: 16
                  ),
                ),
              ),
            ],
          ),
        ),
        ///add account
        InkWell(
          onTap: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => Selectyourstructure(),));
          },
          child: Row(
            children: [
              Container(
                  margin: EdgeInsets.only(left: screensize.width*0.009,
                      top: 15
                  ),
                  child:    InkWell(
                    child: Container(
                      margin: EdgeInsets.only(left: screensize.width*0.0049,
                      ),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                         // color: splashcolor,
                          // border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(100))
                      ),
                      child:  Align(
                        alignment: AlignmentDirectional.center,
                        child:Image.asset('images/mvc/Plusicon.png'),
                      ),
                    ),
                  )),

              Container(
                margin: EdgeInsets.only(left: screensize.width*0.03,
                    top: 15),
                child:  Text('Add account',
                  style:TextStyle(
                      fontFamily: 'Satoshi-Medium',
                      color:splashcolor,
                      fontWeight:FontWeight.w600,
                      fontSize: 16
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    )
                   )
               ),
                 SizedBox(height: 25,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Card(
                       elevation: 2,
                       margin: EdgeInsets.only(left: screensize.width*0.04),
                       shape:RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(15.0),
                       ),
                       child: Container(
                         height: 87,
                         width: 166,
                         child: Column(
                           children: [
                             Align(
                               alignment: AlignmentDirectional.topStart
                               ,child: Container(
                               margin: EdgeInsets.only(
                                   top: 15,left: 15),
                               child: Image.asset('images/mvc/cat/Saved.png',
                               ),
                             ),
                             ),
                             Align(
                               alignment: AlignmentDirectional.topStart,
                               child: Container(
                                 margin: EdgeInsets.only(left: screensize.width*0.03,
                                     top: 10,bottom: 10),
                                 child:  Text('Saved',
                                   style:TextStyle(
                                       fontFamily: 'Satoshi-Medium',
                                       color: event2colors,
                                       fontWeight:FontWeight.w700,
                                       fontSize: 16
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                         decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(15)
                         ),
                       ),
                     ),
                     ///first grid
                     Card(
                       elevation: 2,
                       margin: EdgeInsets.only(left: screensize.width*0.04),
                       shape:RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(15.0)),
                       child: Container(
                         height: 87,
                         width: 166,
                         child: Column(
                           children: [
                             Align(
                               alignment: AlignmentDirectional.topStart
                               ,child: Container(
                               margin: EdgeInsets.only(
                                   top: 15,left: 15),
                               child: Image.asset('images/mvc/cat/Booking.png',
                               ),
                             ),
                             ),
                             Align(
                               alignment: AlignmentDirectional.topStart,
                               child: Container(
                                 margin: EdgeInsets.only(left: screensize.width*0.03,
                                     top: 10,bottom: 10),
                                 child:  Text('Bookings',
                                   style:TextStyle(
                                       fontFamily: 'Satoshi-Medium',
                                       color: event2colors,
                                       fontWeight:FontWeight.w700,
                                       fontSize: 16
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                         decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(15)
                         ),
                       ),
                     ),
                   ],
                 ),
                 SizedBox(height: 25,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Card(
                       elevation: 2,
                       margin: EdgeInsets.only(left: screensize.width*0.04),
                       shape:RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(15.0),
                       ),
                       child: Container(
                         height: 87,
                         width: 166,
                         child: Column(
                           children: [
                             Align(alignment:AlignmentDirectional.topStart,
                               child: Container(
                                 margin: EdgeInsets.only(
                                     top: 15,left: 15),
                                 child: Image.asset('images/mvc/cat/Campus Map.png',
                                 ),
                               ),
                             ),
                             Align(alignment:AlignmentDirectional.topStart,
                               child: Container(
                                 margin: EdgeInsets.only(left: screensize.width*0.03,
                                     top: 10,bottom: 10),
                                 child:  Text('Campus map',
                                   style:TextStyle(
                                       fontFamily: 'Satoshi-Medium',
                                       color: event2colors,
                                       fontWeight:FontWeight.w700,
                                       fontSize: 16
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                         decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(15)
                         ),
                       ),
                     ),
                     ///first grid
                     Container(
                         margin: EdgeInsets.only(left: screensize.width*0.04),
                         height: 87,
                         width: 166,
                         child: Text('')
                     ),
                   ],
                 ),
               ],
             ):
             ///end of list
             ///end of list
             ///end of list
             Column(
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     InkWell(
                       onTap: (){
                       }
                       ,child: Card(
                         elevation: 2,
                         margin: EdgeInsets.only(left: screensize.width*0.04),
                         shape:RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(15.0),
                         ),
                         child: Container(
                           height: 87,
                           width: 166,
                           child: Column(
                             children: [
                               Align(
                                 alignment:AlignmentDirectional.topStart,
                                 child: Container(
                                   margin: EdgeInsets.only(
                                       top: 15,left: 15),
                                   child: Image.asset('images/mvc/cat/Calendar.png',

                                   ),
                                 ),
                               ),
                               Align(
                                 alignment:AlignmentDirectional.topStart,
                                 child: Container(
                                   margin: EdgeInsets.only(left: screensize.width*0.03,
                                       top: 10,bottom: 10),
                                   child:  Text('Calendar',
                                     style: TextStyle(
                                         fontFamily: 'Satoshi-Medium',
                                         color: event2colors,
                                         fontWeight:FontWeight.w700,
                                         fontSize: 16
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(15)
                           ),
                         ),
                       ),
                     ),
                     ///first grid
                     InkWell(
                       onTap: (){
                         Navigator.push(context,
                             MaterialPageRoute(builder:
                                 (context) => marketplace()));
                       },
                       child: Card(
                         margin: EdgeInsets.only(left: screensize.width*0.04),
                         shape:RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(15.0),
                         ),
                         elevation: 2,
                         child: Container(
                           height: 87,
                           width: 166,
                           child: Column(
                             children: [
                               Align(
                                 alignment: AlignmentDirectional.topStart,
                                 child: Container(
                                   margin: EdgeInsets.only(
                                       top: 15,left: 15),
                                   child: Image.asset('images/mvc/cat/Marketplace.png',
                                   ),
                                 ),
                               ),
                               Align(
                                 alignment: AlignmentDirectional.topStart,
                                 child: Container(
                                   margin: EdgeInsets.only(left: screensize.width*0.03,
                                       top: 10,bottom: 10),
                                   child:  Text('Marketplace',
                                     style: TextStyle(
                                         fontFamily: 'Satoshi-Medium',
                                         color: event2colors,
                                         fontWeight:FontWeight.w700,
                                         fontSize: 16
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(15)
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
                 ///first grid row
                 ///second grid row
                 SizedBox(height: 25,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Card(
                       elevation: 2,
                       margin: EdgeInsets.only(left: screensize.width*0.04),
                       shape:RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(15.0),
                       ),
                       child: Container(
                         height: 87,
                         width: 166,
                         child: Column(
                           children: [
                             Align(
                               alignment:AlignmentDirectional.topStart
                               ,child: Container(
                               margin: EdgeInsets.only(
                                   top: 15,left: 15),
                               child: Image.asset('images/mvc/cat/Jobs.png',

                               ),
                             ),
                             ),
                             Align(
                               alignment:AlignmentDirectional.topStart,
                               child: Container(
                                 margin: EdgeInsets.only(left: screensize.width*0.03,
                                     top: 10),
                                 child:  Text('Jobs',
                                   style:TextStyle(
                                       fontFamily: 'Satoshi-Medium',
                                       color: event2colors,
                                       fontWeight:FontWeight.w700,
                                       fontSize: 16
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                         decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(15)
                         ),
                       ),
                     ),
                     ///first grid
                     Card(
                       elevation: 2,
                       margin: EdgeInsets.only(left: screensize.width*0.04),
                       shape:RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(15.0)),
                       child: Container(
                         height: 87,
                         width: 166,
                         child: Column(
                           children: [
                             Align(
                               alignment:AlignmentDirectional.topStart,
                               child: Container(
                                 margin: EdgeInsets.only(
                                     top: 15,left: 15),
                                 child: Image.asset('images/mvc/selectedhome.png',

                                 ),
                               ),
                             ),
                             Align(
                               alignment:AlignmentDirectional.topStart,
                               child: Container(
                                 margin: EdgeInsets.only(left: screensize.width*0.03,
                                     top: 10,bottom: 10),
                                 child:  Text('Accomodation',
                                   style: TextStyle(
                                       fontFamily: 'Satoshi-Medium',
                                       color: event2colors,
                                       fontWeight:FontWeight.w700,
                                       fontSize: 16
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                         decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(15)
                         ),
                       ),
                     ),
                   ],
                 ),
                 ///end second grid row
                 ///start third grid row
                 SizedBox(height: 25,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Card(
                       elevation: 2,
                       margin: EdgeInsets.only(left: screensize.width*0.04),
                       shape:RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(15.0),
                       ),
                       child: Container(
                         height: 87,
                         width: 166,
                         child: Column(
                           children: [
                             Align(
                               alignment: AlignmentDirectional.topStart
                               ,child: Container(
                               margin: EdgeInsets.only(
                                   top: 15,left: 15),
                               child: Image.asset('images/mvc/cat/Saved.png',
                               ),
                             ),
                             ),
                             Align(
                               alignment: AlignmentDirectional.topStart,
                               child: Container(
                                 margin: EdgeInsets.only(left: screensize.width*0.03,
                                     top: 10,bottom: 10),
                                 child:  Text('Saved',
                                   style:TextStyle(
                                       fontFamily: 'Satoshi-Medium',
                                       color: event2colors,
                                       fontWeight:FontWeight.w700,
                                       fontSize: 16
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                         decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(15)
                         ),
                       ),
                     ),
                     ///first grid
                     Card(
                       elevation: 2,
                       margin: EdgeInsets.only(left: screensize.width*0.04),
                       shape:RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(15.0)),
                       child: Container(
                         height: 87,
                         width: 166,
                         child: Column(
                           children: [
                             Align(
                               alignment: AlignmentDirectional.topStart
                               ,child: Container(
                               margin: EdgeInsets.only(
                                   top: 15,left: 15),
                               child: Image.asset('images/mvc/cat/Booking.png',
                               ),
                             ),
                             ),
                             Align(
                               alignment: AlignmentDirectional.topStart,
                               child: Container(
                                 margin: EdgeInsets.only(left: screensize.width*0.03,
                                     top: 10,bottom: 10),
                                 child:  Text('Bookings',
                                   style:TextStyle(
                                       fontFamily: 'Satoshi-Medium',
                                       color: event2colors,
                                       fontWeight:FontWeight.w700,
                                       fontSize: 16
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                         decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(15)
                         ),
                       ),
                     ),
                   ],
                 ),
                 ///end third grid row
                 ///start last grid row
                 SizedBox(height: 25,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Card(
                       elevation: 2,
                       margin: EdgeInsets.only(left: screensize.width*0.04),
                       shape:RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(15.0),
                       ),
                       child: Container(
                         height: 87,
                         width: 166,
                         child: Column(
                           children: [
                             Align(alignment:AlignmentDirectional.topStart,
                               child: Container(
                                 margin: EdgeInsets.only(
                                     top: 15,left: 15),
                                 child: Image.asset('images/mvc/cat/Campus Map.png',
                                 ),
                               ),
                             ),
                             Align(alignment:AlignmentDirectional.topStart,
                               child: Container(
                                 margin: EdgeInsets.only(left: screensize.width*0.03,
                                     top: 10,bottom: 10),
                                 child:  Text('Campus map',
                                   style:TextStyle(
                                       fontFamily: 'Satoshi-Medium',
                                       color: event2colors,
                                       fontWeight:FontWeight.w700,
                                       fontSize: 16
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                         decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(15)
                         ),
                       ),
                     ),
                     ///first grid
                     Container(
                         margin: EdgeInsets.only(left: screensize.width*0.04),
                         height: 87,
                         width: 166,
                         child: Text('')
                     ),
                   ],
                 ),
                 ///end las grid row
               ],
             ),
           )
         ],
       ),
     ),
   );
  }
}








//   Image.asset('images/profile account.png',
//     //height: 55,
//   ),
// ),
// DropdownButton<String>(
//
//   items: _currencies.map((String dropDownStringItem) {
//     return DropdownMenuItem<String>(
//       value: dropDownStringItem,
//       child: Text(dropDownStringItem),
//     );
//   }).toList(),
//
//   onChanged: ( newValueSelected) {
//     // Your code to execute, when a menu item is selected from drop down
//     _onDropDownItemSelected(newValueSelected!);
//   },
//
//   value: _currentItemSelected,
//
// ),




// ListView.builder(
// itemCount: 4,
// shrinkWrap: true,
// physics: NeverScrollableScrollPhysics(),
// itemBuilder: (context,index){
// print('----------------------------------------');
// print('----------------------------------------');
// print('---------------${index}---------------');
// print('----------------------------------------');
// print('----------------------------------------');
//
// }
// )