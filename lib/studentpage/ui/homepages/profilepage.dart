import 'package:awesome_dialog/awesome_dialog.dart';

import 'package:ecampus/studentpage/ui/homepages/secorityandprivacy.dart';

import 'package:flutter/material.dart';
import '../../../color.dart';
import '../../../mvc/virtualcard/virtualcard.dart';
import '../../../mvc/welcometoecampus.dart';
import 'account.dart';
import 'editprofile.dart';

class Profilepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Profilepagestate();
  }
}

// CollectionReference users = FirebaseFirestore.instance.collection('user');
// var crnuser=FirebaseAuth.instance.currentUser;
var docsvalue;
List datalst = [];
Map<String, dynamic> test = new Map();

class _Profilepagestate extends State<Profilepage> {
  // getdata()async{
  //   var myprofiledata=FirebaseFirestore.instance.collection('user');

  //   await myprofiledata.where('username',
  //       isEqualTo: '${crnuser!.email.toString()}').
  //      get().then((value){
  //     value.docs.forEach((element) {
  //       print('=================================');
  //       print('=================================');
  //       print(element.data());
  //       print(element.id);
  //       print('${crnuser!.email.toString()}');
  //       print('=================================');
  //       print('=================================');
  //       setState(() {
  //         docsvalue=element.id;
  //         datalst=[];
  //         datalst.add(element.data());
  //       });

  //     });
  //   });
  // }
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    //var crnuser=FirebaseAuth.instance.currentUser;

    return Scaffold(
      backgroundColor: profilebackgroudcolors,
      body: datalst[0] == null
          ? Center(
              child: Text('loading'),
            )
          : ListView(
              children: [
                Container(
                  alignment: AlignmentDirectional.topStart,
                  margin:
                      EdgeInsets.only(left: screensize.width * 0.05, top: 15),
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset('images/mvc/coloredbackarrow.png')),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: screensize.width * 0.1),
                      child: Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Text(
                          '${datalst[0]['Legal first name']}',
                          style: TextStyle(
                              fontFamily: 'Satoshi-Medium',
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 32),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: screensize.width * 0.50, top: 5),
                      child: InkWell(
                        child: Container(
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(
                              color: splashcolor,
                              border: Border.all(width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Text(
                              'First name ',
                              style: TextStyle(
                                  fontFamily: 'Satoshi-Variable',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: screensize.width * 0.1),
                  child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      '121761538',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ),
                ),
                SizedBox(
                  height: screensize.height * 0.009,
                ),
                Center(
                  child: Container(
                    width: screensize.width * 0.6,
                    height: 54,
                    margin: EdgeInsets.only(right: 10, left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: InkWell(
                        onTap: () {
                          print("add to wallet");
                        },
                        child: Image.asset('images/a.jpg')),
                  ),
                ),
                Center(
                  child: Container(
                    width: screensize.width * 0.6,
                    height: 34,
                    margin: EdgeInsets.only(
                        right: 10, left: 10, top: screensize.height * 0.009),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: splashcolor, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: InkWell(
                      onTap: () {
                        // getdata();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => virtualcard(
                                datalst: datalst,
                                docsvalue: docsvalue,
                              ),
                            ));

                        ///Virtualcard
                      },
                      child: Align(
                        alignment: AlignmentDirectional.center,
                        child: Text(
                          'Virtual Card',
                          style: TextStyle(
                              fontFamily: 'Satoshi-Medium',
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screensize.height * 0.019,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 1,
                  margin: EdgeInsets.only(
                      right: screensize.width * 0.07,
                      left: screensize.width * 0.07),
                  child: Container(
                    width: screensize.width * 0.5,
                    height: 44,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: InkWell(
                        onTap: () {
                          print("help");
                        },
                        child: Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    left: screensize.width * 0.05,
                                    top: 10,
                                    bottom: 10),
                                child: Image.asset('images/qusmark.png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: screensize.width * 0.01,
                                    top: 10,
                                    bottom: 10),
                                child: Text(
                                  'Help',
                                  style: TextStyle(
                                      fontFamily: 'Satoshi-Light',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),

                //three rows
                SizedBox(
                  height: screensize.height * 0.019,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  margin: EdgeInsets.only(
                      right: screensize.width * 0.07,
                      left: screensize.width * 0.07),
                  elevation: 1,
                  child: Container(
                    width: screensize.width * 0.5,
                    height: 149,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: InkWell(
                        onTap: () {
                          print("three rows");
                        },
                        child: Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: screensize.width * 0.05,
                                        top: 10,
                                        bottom: 10),
                                    child: Image.asset('images/account.png'),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: screensize.width * 0.01,
                                            top: 10,
                                            bottom: 10),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => Account(
                                                    datalst: datalst,
                                                  ),
                                                ));
                                          },
                                          child: Text(
                                            'Account details',
                                            style: TextStyle(
                                                fontFamily: 'Satoshi-Light',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 18,
                                        width: 68,
                                        margin: EdgeInsets.only(
                                            right: 10,
                                            left: screensize.width * 0.34),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(68),
                                            color: notverifiedcolors),
                                        child: Text(
                                          'Not verified',
                                          style: TextStyle(
                                              fontFamily: 'Satoshi-Light',
                                              color: notverifiedtextcolors,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              //end first row
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: screensize.width * 0.05,
                                        top: 10,
                                        bottom: 10),
                                    child: Image.asset('images/sec.png'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: screensize.width * 0.01,
                                        top: 10,
                                        bottom: 10),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  secorityandprivacy(
                                                      datalst: datalst),
                                            ));
                                      },
                                      child: Text(
                                        'Security & privacy',
                                        style: TextStyle(
                                            fontFamily: 'Satoshi-Light',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              //end Second row
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: screensize.width * 0.05,
                                        top: 10,
                                        bottom: 10),
                                    child: Image.asset('images/setting.png'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: screensize.width * 0.01,
                                        top: 10,
                                        bottom: 10),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => editprofile(
                                                datalst: datalst,
                                                gender: 'male',
                                              ),
                                            ));
                                      },
                                      child: Text(
                                        'App settings',
                                        style: TextStyle(
                                            fontFamily: 'Satoshi-Light',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ),
                                  //end three rows
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                //end Third row
                SizedBox(
                  height: screensize.height * 0.019,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 1,
                  margin: EdgeInsets.only(
                      right: screensize.width * 0.07,
                      left: screensize.width * 0.07),
                  child: Container(
                    width: screensize.width * 0.5,
                    height: 44,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: InkWell(
                        onTap: () async {
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
                            title: 'Logout',
                            desc: 'Do you want to Log Out',
                            showCloseIcon: true,
                            btnCancelOnPress: () {},
                            btnOkOnPress: () {},
                          );

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => welcometoecampus(),
                              ));
                        },
                        child: Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    left: screensize.width * 0.05,
                                    top: 10,
                                    bottom: 10),
                                child: Image.asset('images/logout.png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: screensize.width * 0.01,
                                    top: 10,
                                    bottom: 10),
                                child: Text(
                                  'Log out',
                                  style: TextStyle(
                                      fontFamily: 'Satoshi-Light',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                //end logout
                SizedBox(
                  height: screensize.height * 0.019,
                ),
                Center(
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      'Version 1.0',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: splashcolor,
                          fontWeight: FontWeight.w400,
                          fontSize: 13),
                    ),
                  ),
                ),
                Center(
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      'DigiRoad, Inc.',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: seconpagecolors,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
