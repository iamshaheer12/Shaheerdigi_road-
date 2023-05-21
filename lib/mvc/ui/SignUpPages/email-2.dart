//universitycollegeemail.dart
import 'package:ecampus/mvc/welcometoecampus.dart';
import 'package:flutter/material.dart';

import '../../../color.dart';
import '../../checkpasscode.dart';
import '../../otpmvc.dart';
import '../loginpages/Logecampus.dart';
import 'otp-email-3.dart';

class universitycollegeemail extends StatefulWidget {
     var txt='';
     universitycollegeemail({required this.txt});
     @override
     State<StatefulWidget> createState() {
       return _universitycollegeemailstate(txt: this.txt);
        }
        }
 class _universitycollegeemailstate extends State<universitycollegeemail>{
   var txt='';
   final _formKey = GlobalKey<FormState>();
   _universitycollegeemailstate({required this.txt});
   TextEditingController email=new TextEditingController();
   @override
  void initState() {
   print('email=========${email.text}');
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
         SizedBox(height: 15,),
         SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: Row(
             children: [
               Container(
                 margin: EdgeInsets.only(right: 10,left: 10),
                 child: Image.asset('images/mvc/buleline.png'),
               ),
               Container(
                 margin: EdgeInsets.only(right: 10,left: 10),
                 child: Image.asset('images/mvc/offline.png'),
               ),
               Container(
                 margin: EdgeInsets.only(right: 10,left: 10),
                 child: Image.asset('images/mvc/offline.png'),
               ),
               Container(
                 margin: EdgeInsets.only(right: 10,left: 10),
                 child: Image.asset('images/mvc/offline.png'),
               ),
               Container(
                 margin: EdgeInsets.only(right: 10,left: 10),
                 child: Image.asset('images/mvc/offline.png'),
               ),
             ],
           ),
         ),
          SizedBox(height: screensize.height*0.003,),
          Container(
            alignment: AlignmentDirectional.topStart,
            margin: EdgeInsets.only(left: screensize.width*0.05,top: 15),
            child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Image.asset('images/mvc/coloredbackarrow.png')),
          ),
          SizedBox(height: screensize.height*0.003,),
          Column(children: [
            Container(
              margin: EdgeInsets.only(left: screensize.width*0.06),
              child:  Align(
                alignment: AlignmentDirectional.topStart,
                child:  Text('What’s your University/',
                  style: TextStyle(
                      fontFamily: 'Satoshi-Variable',
                      color: Colors.black,
                      fontWeight:FontWeight.w700,
                      fontSize: 32
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: screensize.width*0.06),
              child:  Align(
                alignment: AlignmentDirectional.topStart,
                child:  Text('College Email?',
                  style: TextStyle(
                      fontFamily: 'Satoshi-Variable',

                      color: Colors.black,
                      fontWeight:FontWeight.w700,
                      fontSize: 32
                  ),
                ),
              ),
            ),
          ],),
          SizedBox(height: screensize.height*0.029,),
          Stack(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 5,top: 3),
                  child: Image.asset('images/infologo.png')),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text('We will use your email to verify your student status and if you need to reset your password.',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: seconpagecolors,
                        fontWeight:FontWeight.w400,
                        fontSize: 13
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: screensize.height*0.029,),
          Container(
            //height: 60,
            width: screensize.width*0.7,
            margin: EdgeInsets.only(right: 20,left: 20),
            decoration: BoxDecoration(
                border: Border.all(width: 0.1,color: Colors.black),
                color: Colors.white,
                shape: BoxShape.rectangle
            ),
            child: Form(
              key: _formKey,
              child: TextFormField(
                textAlign: TextAlign.left,
                controller: email,
                decoration: InputDecoration(
                 contentPadding: EdgeInsets.only(left: 15),
                 hintText:  '   Email address',
                 hintStyle: TextStyle(
                     fontFamily: 'Satoshi-Variable',
                     color:adidaslogocfdolors,
                     fontWeight:FontWeight.w400,
                     fontSize: 13,
                 )
                ),
              ),
            ),
          ),
          SizedBox(height: screensize.height*0.029,),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: screensize.width*0.25),
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: Text('Have an account?',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Variable',
                        color:Colors.black,
                        fontWeight:FontWeight.w400,
                        fontSize: 13
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left:1),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>Logecampus()
                    ,));
                  },
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Text(' Log in here.',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Variable',
                          color:splashcolor,
                          fontWeight:FontWeight.w400,
                          fontSize: 13
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: screensize.height*0.35,
          ),
       ///event horizen
      Container(
        margin: EdgeInsets.only(right: 15,left:15
            ,top: 15,bottom:15),
        height:48,
        width: screensize.width,
        decoration: BoxDecoration(
            color: splashcolor,
            border: Border.all(
              color: splashcolor,
              width:1,
            ),
            borderRadius: BorderRadius.all(Radius.circular(5))
        ),
        child: ElevatedButton(onPressed: () {
         
          Navigator.push(context, MaterialPageRoute(builder:
          (context) =>  otloginpmvc(
            email: email,
            txt: txt,
          ),));
  
        // if(txt=='Sign up'){
        //   print('Sign up');
        //   Navigator.push(context, MaterialPageRoute(builder:
        //   (context) => otpmvc(email: email,txt: txt),));
        // }
        // else if (txt=='Log in'){
        //   Navigator.push(context, MaterialPageRoute(builder:
        //       (context) => checkpasscode(email: email,txt: txt),));
        // }
          

        },
          style:ButtonStyle(
              backgroundColor: MaterialStateProperty.all(splashcolor),
              elevation: MaterialStateProperty.all(3)
          ),
          child: Center(
            child: Align(
              alignment: AlignmentDirectional.center,
              child:   Text('Continue',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Satoshi-Variable',
                    color: Colors.white,
                    fontWeight:FontWeight.w100,
                    fontSize: 16
                ),
              ),
            ) ,
          ),

        ),
      )
        ],
      ),
    );
  }

 }
