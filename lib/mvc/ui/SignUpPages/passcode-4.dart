import 'package:awesome_dialog/awesome_dialog.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecampus/mvc/ui/SignUpPages/More_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import '../../../color.dart';

class createpasscod extends StatefulWidget {
  TextEditingController email = new TextEditingController();
  createpasscod({required this.email});
  @override
  State<StatefulWidget> createState() {
    return _createpasscodstate(email: this.email);
  }
}

class _createpasscodstate extends State<createpasscod> {
  TextEditingController myController1 = TextEditingController();
  TextEditingController myController2 = TextEditingController();
  TextEditingController myController3 = TextEditingController();
  TextEditingController myController4 = TextEditingController();
  TextEditingController email = new TextEditingController();
  var docs = '';
  var passcode = '';
  final _formKey = GlobalKey<FormState>();
  bool isfinied = false;
  _createpasscodstate({required this.email});

  var imagePicker = ImagePicker();
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
                'Create passcode',
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
                    'Create a passcode for your eCampus account.',
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
                          maxLines: 1,
                          onChanged: (_) => FocusScope.of(context).nextFocus(),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                          ],
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
                          maxLines: 1,
                          onChanged: (_) => FocusScope.of(context).nextFocus(),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                          ],
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
                          maxLines: 1,
                          onChanged: (_) => FocusScope.of(context).nextFocus(),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                          ],
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
                        maxLines: 1,
                        onChanged: (_) => FocusScope.of(context).nextFocus(),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                        ],
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
                    print('==================passcode=====-----');
                    print('==================passcode=====-----');
                    passcode =
                        '${myController1.text}${myController2.text}${myController3.text}${myController4.text}';
                    print('passcode=====$passcode}-----');
                    print('==================passcode=====-----');
                    print('==================passcode=====-----');
                  });
                  () async {
                    setState(() {
                      isfinied = true;
                    });
                    isfinied == true
                        ? await CircularProgressIndicator()
                        : AwesomeDialog(
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
                            title: 'Wrong',
                            desc: 'Please verify your University ID',
                            showCloseIcon: true,
                            btnCancelOnPress: () {},
                            btnOkOnPress: () {},
                          ).show();
                  };

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            verifyyouridentity(email: email, docs: '${docs}'),
                      ));
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
// Future<void>? addUser() {
//   return users.add({
//       'username': email.text, // John Doe
//       'passcode': passcode,

//     }).then((doc) {

//         docs=doc.id.toString();
//       print('///////////////////////////////////');
//       print('///////////////////////////////////');
//       print('hop------s---${docs}-----');
//       print('///////////////////////////////////');
//       print('///////////////////////////////////');
//     }).then((value) => print("User Added"))
//         .catchError((error) => print("Failed to add user: $error"));

// }
}
