import 'dart:io';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:ecampus/mvc/thirdcameracheckid.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

///lifecameraidentity
class secondcheckcamerid extends StatefulWidget {
  var docs = '';
  TextEditingController email = new TextEditingController();
  secondcheckcamerid({required this.docs, required this.email});
  @override
  State<StatefulWidget> createState() {
    return _secondcheckcameridstate(email: this.email, docs: this.docs);
  }
}

class _secondcheckcameridstate extends State<secondcheckcamerid> {
  var docs = '';
  TextEditingController email = new TextEditingController();
  _secondcheckcameridstate({required this.docs, required this.email});
  bool isloaded = false;
  var imagePicker = ImagePicker();
  var url;
  //CollectionReference users = FirebaseFirestore.instance.collection('user');
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
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Position all 4 corners of the page clearly in the frame and take a picture.',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              ),
            ),
          ),

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
            height: screensize.height * 0.22,
          ),
          InkWell(
            onTap: () async {
              if (isloaded == true) {
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
                  title: 'Done',
                  desc: 'Image take successfully',
                  showCloseIcon: true,
                  btnCancelOnPress: () {},
                  btnOkOnPress: () {},
                ).show().then((value) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => thirdcameracheckid(
                            email: this.email, docs: this.docs, url: this.url),
                      ));
                });
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
            child: Container(
              height: 80,
              width: 80,
              alignment: AlignmentDirectional.center,
              child: Image.asset('images/mvc/Record button.png'),
            ),
          ),
        ],
      ),
    );
  }
}
