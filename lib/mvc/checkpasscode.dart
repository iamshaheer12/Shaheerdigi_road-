///checkpasscode.dart
import 'package:awesome_dialog/awesome_dialog.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../color.dart';
import '../studentpage/mainpage.dart';

class checkpasscode extends StatefulWidget {
  TextEditingController email = new TextEditingController();
  var txt = '';
  checkpasscode({required this.email, required this.txt});
  @override
  State<StatefulWidget> createState() {
    return _checkpasscodestate(email: this.email, txt: this.txt);
  }
}

class _checkpasscodestate extends State<checkpasscode> {
  TextEditingController myController1 = TextEditingController();
  TextEditingController myController2 = TextEditingController();
  TextEditingController myController3 = TextEditingController();
  TextEditingController myController4 = TextEditingController();
  TextEditingController email = new TextEditingController();
  var txt = '';
  var docs = '';
  var passcode = '';
  final _formKey = GlobalKey<FormState>();
  bool isfinied = false;
  _checkpasscodestate({required this.email, required this.txt});
  // CollectionReference users = FirebaseFirestore.instance.collection('user');
  var imagePicker = ImagePicker();
  // var crnuser=FirebaseAuth.instance.currentUser;
  var docsvalue;
  bool ispasscodetrue = false;
  List datalst = [];
  // getdata()async{
  //  try{
  //    var myprofiledata=FirebaseFirestore.instance.collection('user');

  //    await myprofiledata.where('username',
  //        isEqualTo: '${email.text}').
  //    get().then((value){
  //      value.docs.forEach((element) {
  //        print('=================================');
  //        print('=================================');
  //        print('------------${datalst}---------------');
  //        print('--------${datalst}------------------');
  //        print('--------${docsvalue}----------------');
  //        print('=================================');
  //        print('=================================');
  //        setState(() {
  //          docsvalue=element.id;
  //          datalst=[];
  //          datalst.add(element.data());
  //        });

  //      });
  //    }
  //    );
  //  }catch(e){
  //    print('=================================');
  //    print('=================================');
  //    print('------------${datalst}---------------');
  //    print('--------${datalst}------------------');
  //    print('--------${docsvalue}----------------');
  //    print('--------${e}----------------');
  //    print('=================================');
  //    print('=================================');
  //  }
  // }
  // checkismypasscodetrueth(var pass)async{
  //  try{
  //    print('------------${datalst}---------------');
  //    if (datalst[0]['passcode']==pass){
  //      setState(() {
  //        ispasscodetrue=true;
  //      });
  //    }
  //    else{
  //      setState(() {
  //        ispasscodetrue=false;
  //      });
  //    }
  //  }
  //  catch(e){
  //    print('---------------------------');
  //    print('---------------------------');
  //    print('--------------$e-----------');
  //    print('---------------------------');
  //    print('---------------------------');
  //  }
  // }

  @override
  void initState() {
    // TODO: implement initState
    //getdata();
    // print('------------------------------------');
    // print('------------------------------------');
    // print('------------${datalst}---------------');
    // print('--------${datalst}------------------');
    // print('--------${docsvalue}----------------');
    // //print('--------${datalst[0]['passcode']}----');
    // print('------------------------------------');
    // print('------------------------------------');
    // print('------------------------------------');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  child: Image.asset('images/mvc/buleline.png'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  child: Image.asset('images/mvc/buleline.png'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  child: Image.asset('images/mvc/offline.png'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  child: Image.asset('images/mvc/offline.png'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  child: Image.asset('images/mvc/offline.png'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screensize.height * 0.003,
          ),
          Container(
            alignment: AlignmentDirectional.topStart,
            margin: EdgeInsets.only(left: screensize.width * 0.05, top: 15),
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset('images/mvc/coloredbackarrow.png')),
          ),
          SizedBox(
            height: screensize.height * 0.003,
          ),
          Container(
            margin: EdgeInsets.only(left: screensize.width * 0.06),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                'Check passcode',
                style: TextStyle(
                    fontFamily: 'Satoshi-Variable',
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 32),
              ),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.005,
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'Check a passcode for your eCampus account.',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: seconpagecolors,
                        fontWeight: FontWeight.w400,
                        fontSize: 13),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: screensize.height * 0.009,
          ),
          Align(
            alignment: AlignmentDirectional.center,
            child: Form(
              key: _formKey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Container(
                        width: 40,
                        height: 56,
                        decoration: BoxDecoration(
                            color: otbcolor,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          controller: myController1,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.phone,
                          textAlign: TextAlign.center,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'pass';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            label: Center(
                              //margin: EdgeInsets.only(left: 30,bottom: 20),
                              child: Directionality(
                                textDirection: TextDirection.ltr,
                                child: Align(
                                  alignment: AlignmentDirectional.center,
                                  child: Text(
                                    '',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
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
                      )),
                  Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Container(
                        width: 40,
                        height: 56,
                        decoration: BoxDecoration(
                            color: otbcolor,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          controller: myController2,
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.next,
                          textAlign: TextAlign.center,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'pass';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            label: Center(
                              child: Directionality(
                                textDirection: TextDirection.ltr,
                                child: Align(
                                  alignment: AlignmentDirectional.center,
                                  child: Text(
                                    '',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
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
                      )),
                  Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Container(
                        width: 40,
                        height: 56,
                        decoration: BoxDecoration(
                            color: otbcolor,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          controller: myController3,
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.next,
                          textAlign: TextAlign.center,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'pass';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            label: Center(
                              //margin: EdgeInsets.only(left: 30,bottom: 20),
                              child: Directionality(
                                textDirection: TextDirection.ltr,
                                child: Align(
                                  alignment: AlignmentDirectional.center,
                                  child: Text(
                                    '',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
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
                      )),
                  //Line 7.png
                  Container(
                    // margin: EdgeInsets.only(right: 20)
                    child: Container(
                      width: 40,
                      height: 56,
                      decoration: BoxDecoration(
                          color: otbcolor,
                          borderRadius: BorderRadius.circular(10)),
                      //margin: EdgeInsets.only(left: 15,right: 15)
                      child: TextFormField(
                        controller: myController4,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.phone,
                        textAlign: TextAlign.center,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'pass';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          label: Center(
                            child: Directionality(
                              textDirection: TextDirection.ltr,
                              child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text(
                                  '',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
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
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(
              right: screensize.width * 0.08,
            ),
            child: Column(
              children: [
                Center(
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      'By entering the passcode, you agree to',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Variable',
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 55),
                  child: Center(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 55),
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Text(
                              ' our',
                              style: TextStyle(
                                  fontFamily: 'Satoshi-Variable',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13),
                            ),
                          ),
                        ),
                        Container(
                          //margin: EdgeInsets.only(left: 90),
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Text(
                              ' Terms & Conditions',
                              style: TextStyle(
                                  fontFamily: 'Satoshi-Variable',
                                  color: splashcolor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

          ///second otp
          SizedBox(
            height: screensize.height * 0.53,
          ),
          Container(
            margin: EdgeInsets.only(right: 15, left: 15, top: 15, bottom: 15),
            height: 48,
            width: screensize.width,
            decoration: BoxDecoration(
                color: splashcolor,
                border: Border.all(
                  color: splashcolor,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: ElevatedButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  setState(() {
                    passcode =
                        '${myController1.text}${myController2.text}${myController3.text}${myController4.text}';
                  });

                  if (ispasscodetrue == true) {
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
                      desc: 'Passcode is correct',
                      showCloseIcon: true,
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    );

                    ///here
                  } else {
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
                      onDismissCallback: (type) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(''),
                          ),
                        );
                      },
                      headerAnimationLoop: false,
                      animType: AnimType.bottomSlide,
                      title: 'Wrog passcode',
                      desc: 'Passcode is not correct',
                      showCloseIcon: true,
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    ).show();
                  }
                  // checkismypasscodetrueth(passcode);

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
                    onDismissCallback: (type) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(''),
                        ),
                      );
                    },
                    headerAnimationLoop: false,
                    animType: AnimType.bottomSlide,
                    title: 'wrong',
                    desc: 'you dont have an account',
                    showCloseIcon: true,
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  ).show();
                }
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(splashcolor),
                  elevation: MaterialStateProperty.all(3)),
              child: Center(
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    'Continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
