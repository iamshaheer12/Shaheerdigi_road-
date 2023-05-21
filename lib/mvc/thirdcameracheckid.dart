///thirdcameracheckid.dart
import 'dart:io';
import 'package:awesome_dialog/awesome_dialog.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

import '../color.dart';
import 'finyouraccount.dart';

///lifecameraidentity
class thirdcameracheckid extends StatefulWidget {
  var docs = '';
  var url;
  TextEditingController email = new TextEditingController();
  thirdcameracheckid(
      {required this.docs, required this.email, required this.url});
  @override
  State<StatefulWidget> createState() {
    return _thirdcameracheckidsstate(
        email: this.email, docs: this.docs, url: this.url);
  }
}

class _thirdcameracheckidsstate extends State<thirdcameracheckid> {
  var docs = '';
  TextEditingController email = new TextEditingController();
  _thirdcameracheckidsstate(
      {required this.docs, required this.email, required this.url});
  bool isloaded = false;
  var imagePicker = ImagePicker();
  var url;
  // CollectionReference users = FirebaseFirestore.instance.collection('user');
  uploadimage() async {
    var imagepicked = await imagePicker.getImage(source: ImageSource.camera);
    if (imagepicked != null) {
      File file = File(imagepicked.path);
      var showromindexnameimage = basename(imagepicked.path);

      ///uploading image on firestore

      ///end uploding
    }
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
          Container(
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Take a picture of your Student ID',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            alignment: AlignmentDirectional.center,
            margin: EdgeInsets.only(
                left: screensize.width * 0.1, right: screensize.width * 0.1),
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Position all 4 corners of the page clearly in the frame',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              ),
            ),
          ),

          /// and take a picture.
          Container(
            alignment: AlignmentDirectional.center,
            margin: EdgeInsets.only(
                left: screensize.width * 0.1, right: screensize.width * 0.1),
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                ' and take a picture.',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              ),
            ),
          ),

          ///finyouraccount
          ///Selfie preview.png
          SizedBox(
            height: screensize.height * 0.2,
          ),
          InkWell(
            onTap: () async {
              await AwesomeDialog(
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
                title: 'University ID',
                desc: 'Before Sign Up Please Verify your university ID',
                showCloseIcon: true,
                btnCancelOnPress: () {},
                btnOkOnPress: () {},
              ).show().then((value) => uploadimage());
            },
            child: Container(
              height: 268,
              width: 335,
              alignment: AlignmentDirectional.center,
              child: url == null
                  ? Image.asset('images/mvc/Camera Preview.png')
                  : Image.network('${url.toString()}'),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.17,
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
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: ElevatedButton(
              onPressed: () async {
                if (isloaded == true) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => finyouraccount(
                            email: this.email, docs: this.docs, url: this.url),
                      ));
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
                    title: 'Wrong',
                    desc: 'Please verify your University ID',
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
                    'Use this picture',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            margin: EdgeInsets.only(right: 15, left: 15, top: 15, bottom: 15),
            height: 48,
            width: screensize.width,
            decoration: BoxDecoration(
                color: splashgragy2,
                border: Border.all(
                  color: splashgragy2,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: ElevatedButton(
              onPressed: () async {
                await AwesomeDialog(
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
                  title: 'University ID',
                  desc: 'Before Sign Up Please Verify your university ID',
                  showCloseIcon: true,
                  btnCancelOnPress: () {},
                  btnOkOnPress: () {},
                ).show().then((value) => uploadimage());
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(splashgragy2),
                  elevation: MaterialStateProperty.all(3)),
              child: Center(
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    'Retake picture',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
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
