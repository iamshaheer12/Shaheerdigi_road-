//otpmvc.dart
import 'dart:async';
import 'dart:math';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import '../../color.dart';
import 'nameofsociety.dart';
class adminotpmvc extends StatefulWidget{
  TextEditingController email=new TextEditingController();
  var structure='';
  adminotpmvc({required this.email,required this.structure});
  @override
  State<StatefulWidget> createState() {
    return _adminotpmvcstate(email: this.email,structure: this.structure);
  }
}
class _adminotpmvcstate extends State<adminotpmvc>{
  Timer? countdownTimer;
  Duration myDuration = Duration(minutes: 3);
  bool isotpsend=false;
  var structure='';
  int endTime = DateTime.now().minute;
  TextEditingController email=new TextEditingController();
  _adminotpmvcstate({required this.email,required this.structure});
  final _formKey = GlobalKey<FormState>();
  Random random = new Random();
  EmailOTP myauth = EmailOTP();
  sendopt()async{
    myauth.setConfig(
        appEmail: "${email.text}",
        appName: "Email OTP",
        userEmail: email.text,
        otpLength: 6,
        otpType: OTPType.digitsOnly
    );
    if (await myauth.sendOTP() == true) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(
        content: Text("OTP has been sent"),
      ));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(
        content: Text("Oops, OTP send failed"),
      ));
    }
  }
  var userOtp;
  receiveotp()async{
    if (await myauth.verifyOTP(otp: userOtp) == true) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(
        content: Text("OTP is verified"),
      ));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(
        content: Text("Invalid OTP"),
      ));
    }
  }
  TextEditingController txt1=new TextEditingController();
  TextEditingController txt2=new TextEditingController();
  TextEditingController txt3=new TextEditingController();
  TextEditingController txt4=new TextEditingController();
  TextEditingController txt5=new TextEditingController();
  TextEditingController txt6=new TextEditingController();
  bool isitendtosenditagain=false;
  CountdownTimerController controller=new  CountdownTimerController(endTime: 3);
  onEnd(){
    setState(() {
      isitendtosenditagain=true;
    });
  }
  void startTimer() {
    setState(() {
      countdownTimer =
          Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
    });
  }
  // Step 4
  void stopTimer() {
    setState(() => countdownTimer!.cancel());
  }
  // Step 5
  void resetTimer() {
    stopTimer();
    setState(() => myDuration = Duration(minutes: 3));
  }
  // Step 6
  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }
  @override
  void initState(){
    print("email.text===${email.text}");
    controller = CountdownTimerController(endTime: 3, onEnd: onEnd);
    sendopt();
    startTimer();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = strDigits(myDuration.inMinutes.remainder(60));
    final seconds = strDigits(myDuration.inSeconds.remainder(60));
    return Scaffold(
      body: ListView(
        children: [
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
          SizedBox(height:15 ,),
          Column(children: [
            Container(
              margin: EdgeInsets.only(left: screensize.width*0.06),
              child:  Align(
                alignment: AlignmentDirectional.topStart,
                child:  Text('Verify your email',
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
                child:  Text('address',
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
          SizedBox(height:15 ,),
          Container(
            margin: EdgeInsets.only(left: 30),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text('We’ve sent it to ${email.text}',
                style:TextStyle(
                    fontFamily: 'Satoshi-Variable',
                    color:seconpagecolors,
                    fontWeight:FontWeight.w400,
                    fontSize: 13
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            margin: EdgeInsets.only(left: screensize.width*0.03,
                right: screensize.width*0.01
            ),
            child: Form(
              key: _formKey,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10)
                    ,child: Container(
                    width: 40,
                    height: 56,
                    decoration: BoxDecoration(
                        color:otbcolor,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    //margin: EdgeInsets.only(left: 15,right: 15)
                    child:TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      controller: txt1,
                      // textInputAction: TextInputAction.next,
                      textAlign: TextAlign.center,
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return 'otp';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        label:  Center(
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
                  ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10)
                    ,child: Container(
                    width: 40,
                    height: 56,
                    decoration: BoxDecoration(
                        color:otbcolor,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ), //margin: EdgeInsets.only(left: 15,right: 15)
                    child:TextFormField(
                      controller: txt2,
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      textAlign: TextAlign.center,
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return 'otp';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
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
                  ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10)
                    ,child: Container(
                    width: 40,
                    height: 56,
                    decoration: BoxDecoration(
                        color:otbcolor,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    //margin: EdgeInsets.only(left: 15,right: 15)
                    child:TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      controller: txt3,
                      // textInputAction: TextInputAction.next,
                      textAlign: TextAlign.center,
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return 'otp';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
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
                  ),
                  ),
                  //Line 7.png
                  Container(
                    margin: EdgeInsets.only(left: 1,right: 1)
                    ,child:Image.asset('images/mvc/Line 7.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10)
                    ,child:Container(
                    width: 40,
                    height: 56,
                    decoration: BoxDecoration(
                        color:otbcolor,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    //margin: EdgeInsets.only(left: 15,right: 15)
                    child:TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      controller: txt4,
                      // textInputAction: TextInputAction.next,
                      textAlign: TextAlign.center,
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return 'otp';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
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
                  ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10)
                    ,child: Container(
                    width: 40,
                    height: 56,
                    decoration: BoxDecoration(
                        color:otbcolor,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    //margin: EdgeInsets.only(left: 15,right: 15)
                    child:TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      controller: txt5,
                      // textInputAction: TextInputAction.next,
                      textAlign: TextAlign.center,
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return 'otp';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
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
                  ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10)
                    ,child: Container(
                    width: 40,
                    height: 56,
                    decoration: BoxDecoration(
                        color:otbcolor,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    //margin: EdgeInsets.only(left: 15,right: 15)
                    child:TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      controller: txt6,
                      // textInputAction: TextInputAction.next,
                      textAlign: TextAlign.center,
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return 'otp';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
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
                  ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
          Center(
            child:  Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 30),
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Text('Resend code in',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Variable',
                          color: Colors.black,
                          fontWeight:FontWeight.w700,
                          fontSize: 13
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 106),
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child:
                    Text('$minutes:$seconds',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Variable',
                          color: splashcolor,
                          fontWeight:FontWeight.w700,
                          fontSize: 13
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          ///second otp
          SizedBox(height: 15,),
          Center(
            child:  Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 40),
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Text('Didn’t get the code?',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Variable',
                          color: Colors.black,
                          fontWeight:FontWeight.w700,
                          fontSize: 13
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 148),
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child:
                    InkWell(
                      onTap: (){
                        if(myDuration.inMinutes==0&&myDuration.inSeconds==0){
                          sendopt();
                          setState(() {
                            isotpsend=true;
                            Duration(seconds: 10);
                            resetTimer();
                            startTimer();
                            isotpsend=false;
                          });
                        }
                      },
                      child: Text(' Resend it.',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Variable',
                            color: myDuration.inMinutes==0&&myDuration.inSeconds==0?splashcolor:textlightcolor,
                            fontWeight:FontWeight.w700,
                            fontSize: 13
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: screensize.height*0.47,
          ),
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
            child: ElevatedButton(onPressed: () async{
              setState(() {
                userOtp='${txt1.text}${txt2.text}${txt3.text}${txt4.text}${txt5.text}${txt6.text}';
                print("userOtp===---==$userOtp");
              });
              if (_formKey.currentState!.validate()){
                print("userOtp===---==$userOtp");
                print("userOtp===---==$structure");
                  if(await myauth.verifyOTP(otp: userOtp) == true){
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
                      title: 'Done',
                      desc: 'OTP  correct',
                      showCloseIcon: true,
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    ).show().then((value) async{
                      await receiveotp().then((value){
                     Navigator.push(context, MaterialPageRoute(builder:
                       (context) =>
                      nameofsociety(email: this.email,
                      structure: this.structure,)));
                    });
                    ///nameofsociety
                    });
                }
               else{
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
                      title: 'Wrong',
                      desc: 'OTP Not correct',
                      showCloseIcon: true,
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    ).show();
                  }
              }
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