import 'package:ecampus/mvc/ui/loginpages/Logecampus.dart';
import 'package:ecampus/mvc/ui/SignUpPages/email-2.dart';
import 'package:flutter/material.dart';
import '../color.dart';
import '../studentpage/ui/widget/button.dart';
class welcometoecampus extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _welcometoecampusstate();
  }
}
class _welcometoecampusstate extends State<welcometoecampus>{
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
      return Scaffold(
        body: ListView(
          children: [
            SizedBox(height:15 ,),
           Column(children: [
             Container(
               margin: EdgeInsets.only(left: screensize.width*0.06),
               child:  Align(
                 alignment: AlignmentDirectional.topStart,
                 child:  Text('Welcome to',
                   style: TextStyle(
                       fontFamily: 'Satoshi-Variable',
                       color: splashcolor,
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
                 child:  Text('eCampus',
                   style: TextStyle(
                       fontFamily: 'Satoshi-Variable',
                       color: splashcolor,
                       fontWeight:FontWeight.w700,
                       fontSize: 32
                   ),
                 ),
               ),
             ),
           ],),
           Center(
             child: Image.asset('images/mvc/ffffff.png'),
           ),
            SizedBox(
              height: screensize.height*0.10,
            ),
            Butn(txt: 'Sign up',color:splashcolor,btnhight: 48,
                fontwiew: FontWeight.w400,Size: 16
                ,marginbottom: 15,marginleft: 15,marginright: 15,margintop: 15
                ,btnwidth: screensize.width,color2:splashcolor,
                pageroute: universitycollegeemail(txt: 'Sign up'),
                dosomething: (){
                },
                 colorbtntxt: Colors.white,
                  radvalue: 5,),
            SizedBox(
              height: screensize.height*0.0000000000000000000000015,
            ),
            Butn(txt: 'Log in',color:splashgragy,btnhight: 48,
              fontwiew: FontWeight.w400,Size: 16
              ,marginbottom: 15,marginleft: 15,marginright: 15,margintop: 15
              ,btnwidth: screensize.width,color2:splashgragy,
              pageroute:Logecampus(),
            //  universitycollegeemail(txt: 'Log in') ,
              dosomething: (){
              print('next');
              }, colorbtntxt: Colors.black,
              radvalue: 5,)
          ],
        ),
      );
  }

}