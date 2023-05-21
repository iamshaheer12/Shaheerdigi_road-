import 'package:awesome_dialog/awesome_dialog.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../color.dart';
import '../lifecameraidentity.dart';
class identityquickphoto extends StatefulWidget{
  var docs='';
  TextEditingController email=new TextEditingController();
  identityquickphoto({required this.docs,required this.email});
  @override
  State<StatefulWidget> createState() {
    return _identityquickphotostate(docs: this.docs,email: this.email);
  }
}
class _identityquickphotostate extends State<identityquickphoto>{
  var docs='';
  TextEditingController email=new TextEditingController();
  _identityquickphotostate({required this.docs,required this.email});
  var imagePicker= ImagePicker();
  var url;
  //CollectionReference users = FirebaseFirestore.instance.collection('user');
///lifecameraidentity
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 15,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10,left: 10),
                  child: Image.asset('images/mvc/buleline.png'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10,left: 10),
                  child: Image.asset('images/mvc/buleline.png'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10,left: 10),
                  child: Image.asset('images/mvc/buleline.png'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10,left: 10),
                  child: Image.asset('images/mvc/buleline.png'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10,left: 10),
                  child: Image.asset('images/mvc/offline.png'),
                ),
              ],
            ),
          ),
          SizedBox(height: screensize.height*0.013,),
          Column(children: [
            Container(
              margin: EdgeInsets.only(left: screensize.width*0.06),
              child:  Align(
                alignment: AlignmentDirectional.topStart,
                child:  Text('Verify your identity',
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
                child:  Text(' with a quick photo',
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
          SizedBox(height: screensize.height*0.073,),
          //face.png
          Center(
            child: InkWell(
                onTap: ()async{
                  await  AwesomeDialog(
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
                    title: 'DigiRoad would like to Access the Camera',
                    desc: 'DigiRoad requires access to the camera to take photos of documents when requested.',
                    showCloseIcon: true,
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  ).show().then((value) async{
                    print('object');
                  });
                },
                child: Image.asset('images/mvc/tani.png')),
          ),
          SizedBox(height: screensize.height*0.13,),
          Container(
            width: screensize.width,
            height: 94,
            margin: EdgeInsets.only(right: 15,left: 15),
            decoration: BoxDecoration(
                
              border: Border.all(color: otbcolor,
                  width: 1
              ),
              color:otbcolor,
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                    margin: EdgeInsets.only(left: 5,top: 3),
                    child: Image.asset('images/mvc/stop.png')),
                    Container(
                      margin: EdgeInsets.only(left: 35,top: 6),
                      child: Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Text('        It won’t be your profile picture',
                          style: TextStyle(
                              fontFamily: 'Satoshi-Variable',
                              color: Colors.black,
                              fontWeight:FontWeight.w400,
                              fontSize: 13
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Stack(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 5,top: 3),
                        child: Image.asset('images/mvc/yes.png')),
                    Container(
                      margin: EdgeInsets.only(left: 35,top: 4),
                      child: Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Column(
                          children: [
                            Text('       Your photo is secure and used for verification',
                              style: TextStyle(
                                  fontFamily: 'Satoshi-Variable',
                                  color: Colors.black,
                                  fontWeight:FontWeight.w400,
                                  fontSize: 13
                              ),
                            ),
                            Text('needs only',
                              style: TextStyle(
                                  fontFamily: 'Satoshi-Variable',
                                  color: Colors.black,
                                  fontWeight:FontWeight.w400,
                                  fontSize: 13
                              ),
                            ),
                          ],
                        )
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: screensize.height*0.12,
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

                     Navigator.push(context, MaterialPageRoute(builder:
                     (context) => lifecameraidentity(docs: this.docs,email: this.email),));
                   //selectandupload()
                   // else{
                   //   AwesomeDialog(
                   //     context: context,
                   //     dialogType: DialogType.info,
                   //     borderSide: const BorderSide(
                   //       color: Colors.green,
                   //       width: 2,
                   //     ),
                   //     width: 280,
                   //     buttonsBorderRadius: const BorderRadius.all(
                   //       Radius.circular(2),
                   //     ),
                   //     dismissOnTouchOutside: true,
                   //     dismissOnBackKeyPress: false,
                   //     onDismissCallback: (type) {
                   //       ScaffoldMessenger.of(context).showSnackBar(
                   //         SnackBar(
                   //           content: Text(''),
                   //         ),
                   //       );
                   //     },
                   //     headerAnimationLoop: false,
                   //     animType: AnimType.bottomSlide,
                   //     title: 'Wrong',
                   //     desc: 'Please verify your Face ID',
                   //     showCloseIcon: true,
                   //     btnCancelOnPress: () {},
                   //     btnOkOnPress: () {},
                   //   ).show();
                   // }
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
                        fontFamily: 'Satoshi-Medium',
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