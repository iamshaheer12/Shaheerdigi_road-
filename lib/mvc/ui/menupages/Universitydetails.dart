// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../color.dart';
import 'newmodule.dart';
class Universitydetails extends StatefulWidget{
  List datalst=[];
  var gender='male';
  var comnumb='';

  Universitydetails({required this.datalst});

  @override
  State<StatefulWidget> createState() {
    return _Universitydetailsstate(datalst: this.datalst);
  }
}
class _Universitydetailsstate extends State<Universitydetails>{
  _Universitydetailsstate({required this.datalst});
  List datalst=[];
  var gender='';
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
  String mytime=DateFormat('dd-MM-yyyy').format(DateTime.now());
  bool isdatepicked=false;
  pickerdata() async{
    await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime(2150)).then((value) {
      setState(() {
        mytime='${value!.day}/${value.month}/${value.year}';
        isdatepicked=true;
      });
    });
  }
  ///second
  String mytime2=DateFormat('dd-MM-yyyy').format(DateTime.now());
  bool isdatepicked2=false;
  pickerdata2() async{
    await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime(2150)).then((value) {
      setState(() {
        mytime2='${value!.day}/${value.month}/${value.year}';
        isdatepicked=true;
      });
    });
  }
  @override
  void initState() {
  //  getdata();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    //var crnuser=FirebaseAuth.instance.currentUser;
    TextEditingController _myphonenumber=new TextEditingController();
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
                    child: Text('University details',
                      style:TextStyle(
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
            ///this is end of edit
            //first contianer
            SizedBox(height: screensize.height*0.009,),
            Container(
              margin: EdgeInsets.only(left:screensize.width*0.025
                  ,top: screensize.height*0.009),
              child: Align(
                alignment: AlignmentDirectional.topStart,
                child:  Text('Personal information',
                  style:TextStyle(
                      fontFamily: 'Satoshi-Medium',
                      color: Colors.black,
                      fontWeight:FontWeight.w400,
                      fontSize: 12
                  ),
                ) ,
              ),
            ),
            Card(
              margin: EdgeInsets.only(right: screensize.width*0.05,
                  left: screensize.width*0.05),
              elevation: 2,
              child: Container(
                width: screensize.width*0.5,
                // height: 64,
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child:InkWell(onTap: (){
                  print("Personal information");
                },
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Container(
                          margin: EdgeInsets.only(left: screensize.width*0.01,
                              top: 10,bottom: 10),
                          child: Column(
                            children: [
                              Align(
                                alignment: AlignmentDirectional.topStart,
                                child: Container(
                                  margin: EdgeInsets.only(left: screensize.width*0.08),
                                  child: Text('University',
                                    style:TextStyle(
                                        fontFamily: 'Satoshi-Medium',
                                        color: Latestofferscolors,
                                        fontWeight:FontWeight.w500,
                                        fontSize: 13
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional.topStart,
                                child: Container(
                                  margin: EdgeInsets.only(left: screensize.width*0.08),
                                  child: Text('University selection',
                                    style: TextStyle(
                                        fontFamily: 'Satoshi-Medium',
                                        color: accountlightfinaltxtcolors,
                                        fontWeight:FontWeight.w700,
                                        fontSize: 13
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    )),
              ),
            ),
            //end first contianer
            //end logout
            SizedBox(height: screensize.height*0.009,),
            Card(
              margin: EdgeInsets.only(right:
              screensize.width*0.05,
              left: screensize.width*0.05),
              elevation: 2,
              child: Container(
                width: screensize.width*0.5,
                height: 64,
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child:InkWell(onTap: (){
                  print("Personal information");
                },
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Container(
                          margin: EdgeInsets.only(left: screensize.width*0.01,
                              top: 10,bottom: 10),
                          child: Column(
                            children: [
                              Align(
                                alignment: AlignmentDirectional.topStart,
                                child: Container(
                                  margin: EdgeInsets.only(left:
                                  screensize.width*0.08),
                                  child: Text('Student number',
                                    style:TextStyle(
                                        fontFamily: 'Satoshi-Medium',
                                        color:Latestofferscolors,
                                        fontWeight:FontWeight.w400,
                                        fontSize: 12
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional.topStart,
                                child: Container(
                                  margin: EdgeInsets.only(left: screensize.width*0.08),
                                  child: Text('123456789',
                                    style: TextStyle(
                                        fontFamily: 'Satoshi-Medium',
                                        color:accountlightfinaltxtcolors,
                                        fontWeight:FontWeight.w400,
                                        fontSize: 12
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    )),
              ),
            ),
            //second one
            //second contianer
            SizedBox(height: screensize.height*0.009,),
            Card(
              margin: EdgeInsets.only(right: screensize.width*0.05,
                  left: screensize.width*0.05),
              elevation: 2,
              child: Container(
                width: screensize.width*0.5,
                height: 64,
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child:InkWell(onTap: (){
                  print("Date of Birth");
                },
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Container(
                          margin: EdgeInsets.only(left: screensize.width*0.08,
                              top: 10,bottom: 10),
                          child: Column(
                            children: [
                              Align(
                                alignment: AlignmentDirectional.topStart,
                                child: Text('Programme',
                                  style:TextStyle(
                                      fontFamily: 'Satoshi-Medium',
                                      color:splashcolor,
                                      fontWeight:FontWeight.w500,
                                      fontSize: 13
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional.topStart,
                                child: Text('Select Programme being studied',
                                  style:TextStyle(
                                      fontFamily: 'Satoshi-Medium',
                                      color:accountlightfinaltxtcolors,
                                      fontWeight:FontWeight.w700,
                                      fontSize: 13
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    )),
              ),
            ),
            //end second one
            SizedBox(height: screensize.height*0.009,),
            ///this is first edit to new
            Card(
              margin: EdgeInsets.only(right: screensize.width*0.05,
                  left: screensize.width*0.05),
              elevation: 2,
              child: Container(
                width: screensize.width*0.5,
                height: 64,
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child:InkWell(onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>
                      newmodule(datalst:datalst),));
                },
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Container(
                          margin: EdgeInsets.only(left: screensize.width*0.08,
                              top: 10,bottom: 10),
                          child: Column(
                            children: [
                              Align(
                                alignment: AlignmentDirectional.topStart,
                                child: Text('Module',
                                  style:TextStyle(
                                      fontFamily: 'Satoshi-Medium',
                                      color:splashcolor,
                                      fontWeight:FontWeight.w500,
                                      fontSize: 13
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional.topStart,
                                child: Text('Select your Modules',
                                  style:TextStyle(
                                      fontFamily: 'Satoshi-Medium',
                                      color:Colors.black,
                                      fontWeight:FontWeight.w400,
                                      fontSize: 13
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    )),
              ),
            ),
            SizedBox(height: screensize.height*0.009,),
            Card(
              margin: EdgeInsets.only(right: screensize.width*0.05,
                  left: screensize.width*0.05),
              elevation: 2,
              child: Container(
                width: screensize.width*0.5,
                height: 64,
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child:InkWell(onTap: (){
                  print("Country of residence");
                },
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Container(
                          margin: EdgeInsets.only(left: screensize.width*0.08,
                              top: 10,bottom: 10),
                          child: Column(
                            children: [
                              Align(
                                alignment: AlignmentDirectional.topStart,
                                child: Text('',
                                  style:TextStyle(
                                      fontFamily: 'Satoshi-Medium',
                                      color:splashcolor,
                                      fontWeight:FontWeight.w500,
                                      fontSize: 13
                                  ),
                                ),
                              ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Align(
                                   alignment: AlignmentDirectional.topStart,
                                   child: Text('Beginning of studies',
                                     style:TextStyle(
                                         fontFamily: 'Satoshi-Medium',
                                         color:Colors.black,
                                         fontWeight:FontWeight.w500,
                                         fontSize: 13
                                     ),
                                   ),
                                 ),
                               Row(
                                 children: [
                                   Container(
                                     margin: EdgeInsets.only(right: 3),
                                     child: Align(
                                       alignment: AlignmentDirectional.topStart,
                                       child:Image.asset('images/mvc/Selectstartdate.png'
                                       ,height: 15,width: 15),
                                     ),
                                   ),
                                   InkWell(
                                     onTap:()async{
                                       pickerdata();
                                       setState(() {
                                         isdatepicked=true;
                                       });
                                     },
                                     child: Container(
                                       margin: EdgeInsets.only(right: 6),
                                       child: Align(
                                         alignment: AlignmentDirectional.topStart,
                                         child: isdatepicked==true?
                                         Text('${mytime}',
                                           style:TextStyle(
                                     fontFamily: 'Satoshi-Medium',
                                       color:Colors.black,
                                     fontWeight:FontWeight.w500,
                                        fontSize: 12
                                           ),
                                         ):Text('Select a start date',
                                           style:TextStyle(
                                               fontFamily: 'Satoshi-Medium',
                                               color:Colors.black,
                                               fontWeight:FontWeight.w500,
                                               fontSize: 12
                                           ),
                                         ),
                                       ),
                                     ),
                                   ),
                                 ],
                               )
                               ],
                             )
                            ],
                          )
                      ),
                    )),
              ),
            ),
            ///end of before last one
            SizedBox(height: screensize.height*0.009,),
            Card(
              margin: EdgeInsets.only(right: screensize.width*0.05,
                  left: screensize.width*0.05),
              elevation: 2,
              child: Container(
                width: screensize.width*0.5,
                height: 64,
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child:InkWell(onTap: (){
                  print("Country of residence");
                },
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Container(
                          margin: EdgeInsets.only(left: screensize.width*0.08,
                              top: 10,bottom: 10),
                          child: Column(
                            children: [
                              Align(
                                alignment: AlignmentDirectional.topStart,
                                child: Text('',
                                  style:TextStyle(
                                      fontFamily: 'Satoshi-Medium',
                                      color:splashcolor,
                                      fontWeight:FontWeight.w500,
                                      fontSize: 13
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional.topStart,
                                    child: Text('End of studies',
                                      style:TextStyle(
                                          fontFamily: 'Satoshi-Medium',
                                          color:Colors.black,
                                          fontWeight:FontWeight.w400,
                                          fontSize: 13
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 3),
                                        child: Align(
                                          alignment: AlignmentDirectional.topStart,
                                          child:Image.asset('images/mvc/Selectstartdate.png'
                                              ,height: 15,width: 15),
                                        ),
                                      ),
                                      InkWell(
                                 onTap: ()async{
                                    pickerdata2();
                                      setState(() {
                                       isdatepicked2=true;
                                          });
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(right: 6),
                                          child: Align(
                                            alignment: AlignmentDirectional.topStart,
                                            child: isdatepicked2==true?
                                            Text('${mytime2}',
                                              style:TextStyle(
                                                  fontFamily: 'Satoshi-Medium',
                                                  color:Colors.black,
                                                  fontWeight:FontWeight.w500,
                                                  fontSize: 12
                                              ),
                                            ):
                                            Text('Select an end date',
                                              style:TextStyle(
                                                  fontFamily: 'Satoshi-Medium',
                                                  color:Colors.black,
                                                  fontWeight:FontWeight.w500,
                                                  fontSize: 12
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                      ),
                    )),
              ),
            ),
          ]
      ),
    );
  }
}