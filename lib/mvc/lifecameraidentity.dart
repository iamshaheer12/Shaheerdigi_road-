import 'dart:io';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:ecampus/mvc/ui/selectandupload.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

///lifecameraidentity
class lifecameraidentity extends StatefulWidget {
  var docs = '';
  TextEditingController email = new TextEditingController();
  lifecameraidentity({required this.docs, required this.email});
  @override
  State<StatefulWidget> createState() {
    return _lifecameraidentitystate(email: this.email, docs: this.docs);
  }
}

class _lifecameraidentitystate extends State<lifecameraidentity> {
  var docs = '';
  TextEditingController email = new TextEditingController();
  _lifecameraidentitystate({required this.docs, required this.email});
  bool isloaded = false;
  var imagePicker = ImagePicker();
  var url;
  //CollectionReference users = FirebaseFirestore.instance.collection('user');
  // uploadimage()async{
  //   var imagepicked=await imagePicker.getImage(source: ImageSource.camera);
  //   if(imagepicked!=null){
  //     File file=File(imagepicked.path);
  //     var showromindexnameimage=basename(imagepicked.path);
  //     ///uploading image on firestore
  //     var refstore=FirebaseStorage.instance.ref("users/${basename(imagepicked.path)}");
  //     await refstore.putFile(file);
  //     url=await refstore.getDownloadURL();
  //     print('=============================');
  //     print('=============================');
  //     print('url:${url.toString()}');
  //     print('=============================');
  //     print('=============================');
  //     ///end uploding
  //     print('url:$url');
  //     ///end uploding
  //   }
  // }
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
                'Verify your identity',
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
                'Position your face in the oval below',
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
          Container(
            height: 296,
            width: 287,
            alignment: AlignmentDirectional.center,
            child: Image.asset('images/mvc/Selfie preview.png'),
          ),
          SizedBox(
            height: screensize.height * 0.22,
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
                title: 'Face ID',
                desc: 'Before Sign Up Please Verify your Face ID',
                showCloseIcon: true,
                btnCancelOnPress: () {},
                btnOkOnPress: () {},
              );
              Duration(seconds: 10);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        selectandupload(docs: this.docs, email: this.email),
                  ));
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
