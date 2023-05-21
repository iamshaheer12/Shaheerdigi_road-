import 'dart:io';
import 'package:awesome_dialog/awesome_dialog.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import '../../../color.dart';
import '../../../studentpage/ui/secrowpages/campus.dart';
import '../../../studentpage/ui/secrowpages/chat.dart';
import '../../../studentpage/ui/secrowpages/menu.dart';
import '../../ui/menupages/discuontpage.dart';
import 'adminmainpage.dart';

class aboutadminpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _aboutadminpagestate();
  }
}

class _aboutadminpagestate extends State<aboutadminpage> {
  // CollectionReference users = FirebaseFirestore.instance.collection('adminuser');
  // var crnuser=FirebaseAuth.instance.currentUser;
  var docsvalue;
  List datalst = [];
  bool isloaded = false;
  var imagePicker = ImagePicker();
  var imagePicker2 = ImagePicker();
  var url;
  var url2;
  List pages = [
    adminmainpage(),
    discuontpage(),
    chatpage(),
    campuspage(),

    ///menu
    menu(),
  ];
  var select = 0;
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
  ///createpost
  // uploadimage2()async{
  //   var imagepicked=await imagePicker2.getImage(source: ImageSource.gallery);
  //   if(imagepicked!=null){
  //     File file=File(imagepicked.path);
  //     var showromindexnameimage=basename(imagepicked.path);
  //     ///uploading image on firestore
  //     var refstore=FirebaseStorage.instance.ref("users/${basename(imagepicked.path)}");
  //     await refstore.putFile(file);
  //     url2=await refstore.getDownloadURL();
  //     print('=============================');
  //     print('=============================');
  //     print('url:${url2.toString()}');
  //     print('=============================');
  //     print('=============================');
  //     ///end uploding
  //     print('url:$url2');
  //     ///end uploding
  //   }
  // }
  // getdata()async{
  //   try{
  //     var myprofiledata=FirebaseFirestore.instance.collection('adminuser');
  //     await myprofiledata.where('current username',
  //         isEqualTo: '${crnuser!.email.toString()}').
  //     get().then((value){
  //       value.docs.forEach((element) {
  //         print('=================================');
  //         print('=================================');
  //         print(element.data());
  //         print(element.id);
  //         print('${crnuser!.email.toString()}');
  //         print('=================================');
  //         print('=================================');
  //         setState(() {
  //           docsvalue=element.id;
  //           datalst=[];
  //           datalst.add(element.data());
  //         });

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
    //getdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundadminaboutcolors,
      body: ListView(
        children: [
          SizedBox(
            height: screensize.height * 0.003,
          ),
          Row(
            children: [
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
                width: screensize.width * 0.23,
              ),
              Container(
                margin: EdgeInsets.only(left: screensize.width * 0.05, top: 15),
                alignment: AlignmentDirectional.center,
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    'Update Page info',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: adminaboutcolors,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: screensize.width * 0.15, top: 15),
                alignment: AlignmentDirectional.center,
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    'Update',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: chatscolors2,
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: screensize.height * 0.003,
          ),
          Container(
            margin: EdgeInsets.only(left: screensize.width * 0.04),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                'About',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 28),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            margin: EdgeInsets.only(left: 20, right: 20),
            elevation: 2,
            child: Container(
              width: 343,
              height: 56,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          'Name',
                          style: TextStyle(
                              fontFamily: 'Satoshi-Medium',
                              color: splashcolor,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        ),
                      )),
                  Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          '${datalst[0]['nameOfStructure']}',
                          style: TextStyle(
                              fontFamily: 'Satoshi-Medium',
                              color: adminaboutcolors,
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                        ),
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Card(
            margin: EdgeInsets.only(left: 20, right: 20),
            elevation: 1,
            child: Container(
              height: 170,
              width: 345,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: backgroundstacktcolors,
              ),
              child: Stack(
                children: [
                  Container(
                    height: 170,
                    width: 375,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: datalst[0]['MYPHOTObackground'] == null
                            ? Image.asset('images/mvc/loading.gif')
                            : Image.network(
                                '${datalst[0]['MYPHOTObackground']}',
                                fit: BoxFit.fill,
                              )),
                  ),
                  Container(
                      height: 86,
                      width: 86,
                      margin: EdgeInsets.only(top: 75, left: 32, bottom: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: circlescolors,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: circlescolors,
                        ),
                        height: 86,
                        width: 86,
                        child: datalst[0]['MYPHOTO'] == null
                            ? Text('')
                            : ClipRRect(
                                borderRadius: BorderRadius.circular(100.0),
                                child: Image.network(
                                  '${datalst[0]['MYPHOTO']}',
                                ),
                              ),
                      )),
                  InkWell(
                    onTap: () async {
                      //getdata();
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
                        title: 'Profile photo',
                        desc: 'Update Page Profile',
                        showCloseIcon: true,
                        btnCancelOnPress: () {},
                        btnOkOnPress: () {},
                      );
                    },
                    child: Container(
                      height: 27,
                      width: 27,
                      margin: EdgeInsets.only(top: 135, left: 90, bottom: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: splashcolor,
                          border: Border.all(width: 1, color: Colors.white)),
                      child: Image.asset('images/mvc/camera.png'),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      // getdata();
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
                        title: 'Profile Background photo',
                        desc: 'Update Page Background Profile photo',
                        showCloseIcon: true,
                        btnCancelOnPress: () {},
                        btnOkOnPress: () {},
                      );
                    },
                    child: Container(
                      height: 27,
                      width: 27,
                      margin: EdgeInsets.only(top: 85, left: 330, right: 2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: splashcolor,
                          border: Border.all(width: 1, color: Colors.white)),
                      child: Image.asset('images/mvc/camera.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: screensize.height * 0.03,
          ),
          InkWell(
            onTap: () {
              //getdata();
            },
            child: Card(
              margin: EdgeInsets.only(left: 20, right: 20),
              elevation: 2,
              child: Container(
                width: 343,
                height: 56,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            'Website',
                            style: TextStyle(
                                fontFamily: 'Satoshi-Medium',
                                color: splashcolor,
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          ),
                        )),
                    Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: datalst[0]['Website'] == null
                              ? Text(
                                  'https://www.ucc.ie',
                                  style: TextStyle(
                                      fontFamily: 'Satoshi-Medium',
                                      color: adminaboutcolors,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                )
                              : Text(
                                  '${datalst[0]['Website']}',
                                  style: TextStyle(
                                      fontFamily: 'Satoshi-Medium',
                                      color: adminaboutcolors,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                ),
                        )),
                  ],
                ),
              ),
            ),
          ),

          ///second
          SizedBox(
            height: screensize.height * 0.03,
          ),
          InkWell(
            onTap: () {
              // getdata();
            },
            child: Card(
              margin: EdgeInsets.only(left: 20, right: 20),
              elevation: 2,
              child: Container(
                width: 343,
                height: 108,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            'Description',
                            style: TextStyle(
                                fontFamily: 'Satoshi-Medium',
                                color: splashcolor,
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          ),
                        )),
                    Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: datalst[0]['categorybestdes'] == null
                              ? Text(
                                  'hLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus.',
                                  style: TextStyle(
                                      fontFamily: 'Satoshi-Medium',
                                      color: adminaboutcolors,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                )
                              : Text(
                                  '${datalst[0]['categorybestdes']}',
                                  style: TextStyle(
                                      fontFamily: 'Satoshi-Medium',
                                      color: adminaboutcolors,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                ),
                        )),
                  ],
                ),
              ),
            ),
          ),

          ///about
          SizedBox(
            height: screensize.height * 0.03,
          ),
          Container(
            margin: EdgeInsets.only(left: screensize.width * 0.04),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                'Contact',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 28),
              ),
            ),
          ),

          ///last card
          SizedBox(
            height: screensize.height * 0.03,
          ),
          InkWell(
            onTap: () {
              // getdata();
            },
            child: Card(
              margin: EdgeInsets.only(left: 20, right: 20),
              elevation: 2,
              child: Container(
                width: 343,
                height: 56,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            'Email',
                            style: TextStyle(
                                fontFamily: 'Satoshi-Medium',
                                color: splashcolor,
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          ),
                        )),
                    Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: datalst[0]['username'] == null
                              ? Text(
                                  'info@uccsocieties.ie',
                                  style: TextStyle(
                                      fontFamily: 'Satoshi-Medium',
                                      color: adminaboutcolors,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                )
                              : Text(
                                  '${datalst[0]['username']}',
                                  style: TextStyle(
                                      fontFamily: 'Satoshi-Medium',
                                      color: adminaboutcolors,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                ),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: splashcolor,
        unselectedItemColor: Colors.grey.shade500,
        currentIndex: select,
        elevation: 14,
        onTap: (value) => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => adminmainpage(),
            )),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
              label: 'home',
              icon: select == 0
                  ? Image.asset('images/mvc/selectedhome.png')
                  : Image.asset('images/mvc/unselectedhome.png')),
          BottomNavigationBarItem(
              label: 'Products',
              icon: Image.asset('images/mvc/sitting/Products.png')),
          BottomNavigationBarItem(
              label: 'Inbox',
              icon: select == 2
                  ? Image.asset('images/mvc/selectedchat.png')
                  : Image.asset('images/mvc/unselectedchat.png')),
          BottomNavigationBarItem(
              label: 'Members',
              icon: Image.asset('images/mvc/sitting/Members.png')),
          BottomNavigationBarItem(
              label: 'Calendar',
              icon: Image.asset('images/mvc/sitting/Calendar.png')),
        ],
      ),
    );
  }

  // Future<void>? addUserphoto() {
  //   print('url:---------');
  //   //Call the user's CollectionReference to add a new user
  //   return
  //     users.doc('${docsvalue}').set({
  //       'MYPHOTO': url.toString(), // John Doe
  //     },SetOptions(merge: true)).then((value) => print("User Added"))
  //         .catchError((error) => print("Failed to add user: $error"));
  // }
  // Future<void>? addUserphoto2() {
  //   print('url:---------');
  //   //Call the user's CollectionReference to add a new user
  //   return
  //     users.doc('${docsvalue}').set({
  //       'MYPHOTObackground': url2.toString(), // John Doe
  //     },SetOptions(merge: true)).then((value) => print("User Added"))
  //         .catchError((error) => print("Failed to add user: $error"));
  // }
}
