// import 'package:awesome_dialog/awesome_dialog.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import '../../../color.dart';

///createpost.dart
class createpost extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _createpoststate();
  }
}

class _createpoststate extends State<createpost> {
  var docsvalue;
  List datalst = [];

  ///nameOfStructure
  var imagePicker = ImagePicker();
  bool ismycontextforaddpostshown = true;
  var docsvalue2;
  List datalst2 = [];
  bool ismypostformcamera = false;
  var url;
  // CollectionReference adminusers = FirebaseFirestore.instance.collection('post');
  var docs = '';
  // getdata()async{
  //   try{
  //     var myprofiledata=FirebaseFirestore.instance.collection('adminuser');
  //     await myprofiledata.where('current username',
  //         isEqualTo: '${crnuser!.email.toString()}').
  //     get().then((value){
  //       value.docs.forEach((element) {
  //         try{
  //           print('=================================');
  //           print('=================================');
  //           print(element.data());
  //           print(element.id);
  //           print('${crnuser!.email.toString()}');
  //           print('=================================');
  //           print('=================================');
  //           setState(() {
  //             docsvalue=element.id;
  //             datalst=[];
  //             datalst.add(element.data());
  //           });

  //         }catch(e){
  //           print('-------$e---');
  //         }
  //       });
  //     });
  //   }
  //   catch(e){
  //     print('-----------------');
  //     print('-----------------');
  //     print('------$e------');
  //     print('-----------------');
  //     print('-----------------');
  //     CircularProgressIndicator();
  //   }
  // }
  // getdatamy()async{
  //   try{
  //     var myprofiledata2=FirebaseFirestore.instance.collection('user');
  //     await myprofiledata2.where('username',
  //         isEqualTo: '${crnuser!.email.toString()}').
  //     get().then((value){
  //       value.docs.forEach((element) {
  //      try{
  //        print('=================================');
  //        print('=================================');
  //        print(element.data());
  //        print(element.id);
  //        print('${crnuser!.email.toString()}');
  //        print('=================================');
  //        print('=================================');
  //        setState(() {
  //          docsvalue2=element.id;
  //          datalst2=[];
  //          datalst2.add(element.data());
  //        });
  //      }catch(e){
  //        print('---------$e----');
  //      }

  //       });
  //     });
  //   }
  //   catch(e){
  //     print('-----------------');
  //     print('-----------------');
  //     print('------$e------');
  //     print('-----------------');
  //     print('-----------------');
  //     CircularProgressIndicator();
  //   }
  // }
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  //var crnuser=FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: clubsansosbackground,
      body: ListView(
        children: [
          SizedBox(
            height: 13,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 16, top: 16),
                  child: Image.asset('images/mvc/x.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'Create post',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Variable',
                        color: facebooklikecolor,
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16, top: 16),
                child: Text(
                  'Publish',
                  style: TextStyle(
                      fontFamily: 'Satoshi-Medium',
                      color: publishtting,
                      fontWeight: FontWeight.w700,
                      fontSize: 13),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 33,
          ),
          Row(
            children: [
              Container(
                width: 56,
                height: 56,
                margin: EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: chatscolors2),
                child: Center(
                  child: Text(
                    'first name ',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Variable',
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 22),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Align(
                      alignment: AlignmentDirectional.center,
                      child: datalst2[0]['Legal first name'] == null
                          ? Text('Loading')
                          : Text(
                              ///
                              '${datalst2[0]['Legal first name']}                                ',
                              style: TextStyle(
                                  fontFamily: 'Satoshi-Medium',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        margin: EdgeInsets.only(left: 15, right: 2),
                        child: Container(
                          width: 53,
                          height: 22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5, top: 4),
                                child: Image.asset('images/mvc/cat/World.png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 4, top: 4),
                                child: Align(
                                  alignment: AlignmentDirectional.center,
                                  child: Text(
                                    'Public',
                                    style: TextStyle(
                                        fontFamily: 'Satoshi-Medium',
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 7),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5, top: 4),
                                child: Image.asset(
                                    'images/mvc/cat/Vecadsfastor.png'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        margin: EdgeInsets.only(left: 15, right: 2),
                        child: Container(
                          width: 53,
                          height: 22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5, top: 4),
                                child:
                                    Image.asset('images/mvc/cat/add-new.png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 4, top: 4),
                                child: Align(
                                  alignment: AlignmentDirectional.center,
                                  child: Text(
                                    'Album',
                                    style: TextStyle(
                                        fontFamily: 'Satoshi-Medium',
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 7),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5, top: 4),
                                child: Image.asset(
                                    'images/mvc/cat/Vecadsfastor.png'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        margin: EdgeInsets.only(left: 15, right: 2),
                        child: Container(
                          width: 53,
                          height: 22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 3, top: 4),
                                child:
                                    Image.asset('images/mvc/cat/Schedule.png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 2, top: 4),
                                child: Align(
                                  alignment: AlignmentDirectional.center,
                                  child: Text(
                                    'Schedule',
                                    style: TextStyle(
                                        fontFamily: 'Satoshi-Medium',
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 7),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 3, top: 4),
                                child: Image.asset(
                                    'images/mvc/cat/Vecadsfastor.png'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 16, top: 20),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                'What’s on your mind?',
                style: TextStyle(
                    fontFamily: 'Satoshi-Light',
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 13),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                ismycontextforaddpostshown = !ismycontextforaddpostshown;
              });
              // getdata();
              // getdatamy();
            },

            ///ismycontextforaddpostshown
            child: ismycontextforaddpostshown == false
                ? Card(
                    elevation: 1,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            topLeft: Radius.circular(5))),
                    margin: EdgeInsets.only(top: screensize.height * 0.6),
                    child: Container(
                      width: screensize.width,
                      height: screensize.height * 0.15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5))),

                      ///Drawer handle.png
                      child: Column(
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ismycontextforaddpostshown =
                                    !ismycontextforaddpostshown;
                              });
                            },
                            child: Center(
                              child: Image.asset(
                                  'images/mvc/cat/Drawer handle.png'),
                            ),
                          ),
                        ],
                      ),
                    ))
                : Card(
                    elevation: 1,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            topLeft: Radius.circular(5))),
                    margin: EdgeInsets.only(top: 380),
                    child: Container(
                      width: screensize.width,
                      height: screensize.height * 0.35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5))),

                      ///Drawer handle.png
                      child: Column(
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ismycontextforaddpostshown =
                                    !ismycontextforaddpostshown;
                              });
                            },
                            child: Center(
                              child: Image.asset(
                                  'images/mvc/cat/Drawer handle.png'),
                            ),
                          ),
                          SizedBox(
                            height: 75,
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
                                headerAnimationLoop: false,
                                animType: AnimType.bottomSlide,
                                title: 'Upload Post Image',
                                desc:
                                    'Would you like to upload image from Camera or from Gallery',
                                showCloseIcon: true,
                                btnCancelText: 'Gallery',
                                btnOkText: 'Camera',
                                btnCancelOnPress: () {
                                  setState(() {
                                    ismycontextforaddpostshown = false;
                                  });
                                },
                                btnOkOnPress: () {
                                  setState(() {
                                    ismycontextforaddpostshown = true;
                                  });

                                  ///here
                                },
                              );
                            },
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  child: Image.asset(
                                      'images/mvc/cat/Frame 162764.png'),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 12, top: 7),
                                  child: Align(
                                    alignment: AlignmentDirectional.topStart,
                                    child: Text(
                                      'Photo/Video',
                                      style: TextStyle(
                                          fontFamily: 'Satoshi-Medium',
                                          color: adminaboutcolors,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 17),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),

                          ///first row
                          SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 16),
                                child: Image.asset(
                                    'images/mvc/cat/Frame 162764-2.png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 12, top: 7),
                                child: Align(
                                  alignment: AlignmentDirectional.topStart,
                                  child: Text(
                                    'Live video',
                                    style: TextStyle(
                                        fontFamily: 'Satoshi-Medium',
                                        color: adminaboutcolors,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 17),
                                  ),
                                ),
                              )
                            ],
                          ),

                          ///second row
                          SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 16),
                                child: Image.asset(
                                    'images/mvc/cat/Frame 162764-3.png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 12, top: 7),
                                child: Align(
                                  alignment: AlignmentDirectional.topStart,
                                  child: Text(
                                    'Versus',
                                    style: TextStyle(
                                        fontFamily: 'Satoshi-Medium',
                                        color: adminaboutcolors,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 17),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
          )
        ],
      ),
    );
  }
  // Object addpost() {
  //   return adminusers.add({
  //     'postmainphoto':url.toString(),
  //     'cureent user':crnuser!.email.toString(),
  //     'Collegename':'University College Cork',
  //     'postname':'${datalst[0]['nameOfStructure']}               '// John Doe

  //   }).then((doc) {
  //     docs=doc.id.toString();
  //     print('///////////////////////////////////');
  //     print('///////////////////////////////////');
  //     print('hop------s---${docs}-----');
  //     print('///////////////////////////////////');
  //     print('///////////////////////////////////');
  //   }).then((value) => print("User Added"))
  //       .catchError((error) => print("Failed to add user: $error"));
  // }
  // uploadimage()async{
  //   var imagepicked=await imagePicker.getImage(source: ImageSource.camera);
  //   if(imagepicked!=null){
  //     File file=File(imagepicked.path);
  //     var showromindexnameimage=basename(imagepicked.path);
  //     ///uploading image on firestore
  //     var refstore=FirebaseStorage.instance.ref("posts/${basename(imagepicked.path)}");
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
  // }
  // }
  // uploadimagegalary()async{
  //   var imagepicked=await imagePicker.getImage(source: ImageSource.gallery);
  //   if(imagepicked!=null){
  //     File file=File(imagepicked.path);
  //     var showromindexnameimage=basename(imagepicked.path);
  //     ///uploading image on firestore
  //     var refstore=FirebaseStorage.instance.ref("posts/${basename(imagepicked.path)}");
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
}
