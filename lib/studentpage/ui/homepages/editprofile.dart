
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../color.dart';
import 'genderpage.dart';
import 'notvalidated/Notverified.dart';

class editprofile extends StatefulWidget{
  List datalst=[];
  var gender='male';
  var comnumb='';

  editprofile({required this.datalst,required this.gender});

  @override
  State<StatefulWidget> createState() {
    return _editprofilestate(datalst: this.datalst,gender: this.gender);
  }
}
class _editprofilestate extends State<editprofile>{
  List datalst=[];
  var gender='';
  
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
  _editprofilestate({required this.datalst,required this.gender});
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
   // var crnuser=FirebaseAuth.instance.currentUser;
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
                  child: Text('Edit profile',
                    style:TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: Colors.black,
                        fontWeight:FontWeight.w700,
                        fontSize: 32
                    ),
                  ) ,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: screensize.width*0.35,top: 5),
                child:  InkWell(
                  child: Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                        color: splashcolor,
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(100))
                    ),
                    child:  Align(
                      alignment: AlignmentDirectional.center,
                      child:  Text('first name ',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Variable',
                            color: Colors.white,
                            fontWeight:FontWeight.w700,
                            fontSize: 13
                        ),
                      ) ,
                    ),
                  ),
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
          SizedBox(height: 8,),
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
                                  child: Text('Legal first name',
                                    style:TextStyle(
                                        fontFamily: 'Satoshi-Medium',
                                        color: Latestofferscolors,
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
                                  child: Text('${datalst[0]['Legal first name']}',
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
            margin: EdgeInsets.only(right: screensize.width*0.05,left: screensize.width*0.05),
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
                                margin: EdgeInsets.only(left: screensize.width*0.08),
                                child: Text('Legal last name',
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
                                child: Text('${datalst[0]['Legal last name']}',
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
                              child: Text('Date of Birth',
                                style:TextStyle(
                                    fontFamily: 'Satoshi-Medium',
                                    color:Latestofferscolors,
                                    fontWeight:FontWeight.w400,
                                    fontSize: 12
                                ),
                              ),
                            ),
                            Align(
                             alignment: AlignmentDirectional.topStart,
                              child: Text('${datalst[0]['Date of birth (DD/MM/YYYY)']}',
                                style:TextStyle(
                                    fontFamily: 'Satoshi-Medium',
                                    color:accountlightfinaltxtcolors,
                                    fontWeight:FontWeight.w400,
                                    fontSize: 12
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
                              child: Text('Country of residence',
                                style:TextStyle(
                                    fontFamily: 'Satoshi-Medium',
                                    color:splashcolor,
                                    fontWeight:FontWeight.w400,
                                    fontSize: 12
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional.topStart,
                              child: Text('Netherlands',
                                style:TextStyle(
                                    fontFamily: 'Satoshi-Medium',
                                    color:Colors.black,
                                    fontWeight:FontWeight.w400,
                                    fontSize: 12
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
                print("Postcode and City");
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
                              child: Text('Postcode and City',
                                style:TextStyle(
                                    fontFamily: 'Satoshi-Medium',
                                    color:splashcolor,
                                    fontWeight:FontWeight.w400,
                                    fontSize: 12
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional.topStart,
                              child: Text('1105 AW Amsterdam',
                                style:TextStyle(
                                    fontFamily: 'Satoshi-Medium',
                                    color:accountlightfinaltxtcolors,
                                    fontWeight:FontWeight.w400,
                                    fontSize: 12
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                  )),
            ),
          ),
          //third contianer
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
                print("Street and number");
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
                              child: Text('Street and number',
                                style:TextStyle(
                                    fontFamily: 'Satoshi-Medium',
                                    color:splashcolor,
                                    fontWeight:FontWeight.w400,
                                    fontSize: 12
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional.topStart,
                              child: InkWell(
                                onTap: (){
                                  print('street');
                                  // Navigator.push(context,
                                  // MaterialPageRoute(builder:
                                  // (context) =>
                                  // initloginpage(),));
                                },
                                child: Text('Gillis van Ledenberchstraat 112',
                                  style: TextStyle(
                                      fontFamily: 'Satoshi-Medium',
                                      color:Colors.black,
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
          //end fourth one
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
              child:Container(
                child:  datalst[0]['MYPHONE']==null? IntlPhoneField(
                  flagsButtonMargin: EdgeInsets.only(top: 25),
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      // focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 2),
                      hintText:  'Mobile number',
                      hintStyle: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color:graycolors,
                        fontWeight:FontWeight.w400,
                        fontSize: 13,
                      )
                  ),
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                  onCountryChanged: (country) {
                    print('Country changed to: ' + country.name);
                  },
                  controller: _myphonenumber,
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder:
                    (context) =>Notverified(datalst:datalst)
                          ,));///initloginpage()
                  },
                ):InkWell(
                  onTap: (){
                    Navigator.push(context,
                   MaterialPageRoute(builder:
                   (context) =>Notverified(datalst:datalst)
                  ,));///initloginpage()
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 35,top: 25),
                    child: Text('${datalst[0]['MYPHONE']}',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color:Colors.black,
                          fontWeight:FontWeight.w400,
                          fontSize: 12
                      ),
                    ),
                  ),
                ),
              )

          )
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
                print("Email");
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
                              child: Text('Email',
                                style:TextStyle(
                                    fontFamily: 'Satoshi-Medium',
                                    color:splashcolor,
                                    fontWeight:FontWeight.w400,
                                    fontSize: 12
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional.topStart,
                              child: Text('University/College Email',
                                style:TextStyle(
                                    fontFamily: 'Satoshi-Medium',
                                    color: blackfinaltxtcolors,
                                    fontWeight:FontWeight.w400,
                                    fontSize: 12
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                  )),
            ),
          ),
          //end 5contianer

          // 6 container
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
                print("Gender");
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
                              child: Text('Gender',
                                style:TextStyle(
                                    fontFamily: 'Satoshi-Medium',
                                    color:splashcolor,
                                    fontWeight:FontWeight.w400,
                                    fontSize: 12
                                ),
                              ),
                            ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Align(
                                 alignment: AlignmentDirectional.topStart,
                                 child: Text('${gender}',
                                   style:TextStyle(
                                       fontFamily: 'Satoshi-Medium',
                                       color:blackfinaltxtcolors,
                                       fontWeight:FontWeight.w400,
                                       fontSize: 12
                                   ),
                                 ),
                               ),
                               InkWell(
                                 onTap: (){
                                   Navigator.push(context,
                                       MaterialPageRoute(builder:
                                       (context) => genderpage(),));
                                 },
                                 child: Container(
                                   child: Image.asset('images/genderarrow.png'),
                                 ),
                               )
                             ],
                           )
                          ],
                        )
                    ),
                  )),
            ),
          ),
          //end 6 one

    ]
      ),
    );
  }
}