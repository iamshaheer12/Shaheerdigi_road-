//otpwidgets.dart
//sellwidget.dart
import 'package:flutter/material.dart';
import '../../../color.dart';

class otpwidgets extends StatelessWidget {
  String txt='';
  var otpcontroller;
  otpwidgets({required this.txt,required this.otpcontroller});
  @override
  Widget build(BuildContext context) {
     otpcontroller=TextEditingController();
    var screensize=MediaQuery.of(context).size;
    return Container(
      width: 40,
      height: 56,
      decoration: BoxDecoration(
        color:otbcolor,

      ),
      //margin: EdgeInsets.only(left: 15,right: 15)
      child:TextFormField(
        controller: otpcontroller,
       // textInputAction: TextInputAction.next,
        textAlign: TextAlign.center,
      validator: (value){
      if (value == null || value.isEmpty) {
      return 'otp';
      }
      return null;
      },
      decoration: InputDecoration(
        label:  Center(
          //margin: EdgeInsets.only(left: 30,bottom: 20),
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Text('',
                textAlign: TextAlign.center,
                style:TextStyle(
                  fontFamily: 'Satoshi-Medium',
                  color: Colors.black,
                  fontSize: 36,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
    );
    ///first column
  }

}