///loginphonecampus
import 'package:flutter/material.dart';
import '../../../color.dart';
import 'Logecampus.dart';
import '../SignUpPages/otp-email-3.dart';
///Logecampus.dart
class loginphonecampus extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _loginphonecampusstate();
  }
}
class _loginphonecampusstate extends State<loginphonecampus>{
  var docsvalue;
  bool ispasscodetrue=false;
  List datalst=[];
  var comnumb;
  final _formKey = GlobalKey<FormState>();
  TextEditingController email=new TextEditingController();
  // getdata()async{
  //   try{
  //     var myprofiledata=FirebaseFirestore.instance.collection('user');

  //     await myprofiledata.where('username',
  //         isEqualTo: '${email.text}').
  //     get().then((value){
  //       value.docs.forEach((element) {
  //         print('=================================');
  //         print('=================================');
  //         print('------------${datalst}---------------');
  //         print('--------${datalst}------------------');
  //         print('--------${docsvalue}----------------');
  //         print('=================================');
  //         print('=================================');
  //         setState(() {
  //           docsvalue=element.id;
  //           datalst=[];
  //           datalst.add(element.data());
  //         });

  //       });
  //     }
  //     );
  //   }catch(e){
  //     print('=================================');
  //     print('=================================');
  //     print('------------${datalst}---------------');
  //     print('--------${datalst}------------------');
  //     print('--------${docsvalue}----------------');
  //     print('--------${e}----------------');
  //     print('=================================');
  //     print('=================================');
  //   }
  // }
  // checkismypasscodetrueth(var pass)async{
  //   try{
  //     print('------------${datalst}---------------');
  //     if (datalst[0]['passcode']==pass){
  //       setState(() {
  //         ispasscodetrue=true;
  //       });
  //     }
  //     else{
  //       setState(() {
  //         ispasscodetrue=false;
  //       });
  //     }
  //   }
  //   catch(e){
  //     print('---------------------------');
  //     print('---------------------------');
  //     print('--------------$e-----------');
  //     print('---------------------------');
  //     print('---------------------------');
  //   }
  // }
  // CollectionReference users = FirebaseFirestore.instance.collection('user');
  int topbarselection=2;
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: screensize.height*0.03,),
          Container(
            width: screensize.width,
            height: 50,
            margin: EdgeInsets.only(right: 15,left: 15),
            decoration: BoxDecoration(
              // border: Border.all(width: 1),
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: otbcolor
            ),
            child:Row(
              children: [
                InkWell(
                  onTap:(){
                    setState(() {
                      topbarselection=1;
                    });
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context) => Logecampus(),));
                  }
                  ,child: Container(
                  width: screensize.width*0.45,
                  height: 50,
                  margin: EdgeInsets.only(right: 2,left: 0),
                  decoration: BoxDecoration(

                      border: topbarselection==1?Border.all(width: 1):Border.all(width: 0
                          ,color: otbcolor),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: topbarselection==1?Colors.white:
                      otbcolor),
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child:  Text('Phone number',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Variable',
                          color: Colors.black,
                          fontWeight:FontWeight.w700,
                          fontSize: 13
                      ),
                    ) ,
                  ),
                ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      topbarselection=2;
                      Navigator.push(context, MaterialPageRoute(builder:
                          (context) => loginphonecampus(),));
                      topbarselection=2;
                    });

                  },
                  child: Container(
                    width: screensize.width*0.45,
                    height: 50,
                    margin: EdgeInsets.only(right: 0,left: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: topbarselection==2?Colors.white:
                      otbcolor,
                      border: topbarselection==2?Border.all(width: 1):Border.all(width: 0
                          ,color: otbcolor),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional.center,
                      child:  Text('Email',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Variable',
                            color: Colors.black,
                            fontWeight:FontWeight.w700,
                            fontSize: 13
                        ),
                      ) ,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: screensize.height*0.03,),
          SizedBox(height: screensize.height*0.03,),
          Card(
              margin: EdgeInsets.only(right: screensize.width*0.05,
                  left: screensize.width*0.05),
              elevation: 2,
              child: Container(
                  width: screensize.width*0.8,
                  height: 64,
                  decoration: BoxDecoration(
                      color: Colors.white
                  ),
                  child:Container(
                    child:Form(
                      key: _formKey,
                      child: TextFormField(
                        textAlign: TextAlign.left,
                        controller: email,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 15,top: 10),
                            hintText:  '   Email address',
                            hintStyle: TextStyle(
                              fontFamily: 'Satoshi-Variable',
                              color:adidaslogocfdolors,
                              fontWeight:FontWeight.w400,
                              fontSize: 13,
                            )
                        ),
                      ),
                    ),
                  ),
                  )
              ) ,//5 contianer
          SizedBox(height: screensize.height*0.63,),
          Center(
              child: Container(
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
                  print('==========================================');
                  print('==========================================');
                  print('===============..${comnumb}....=================');
                  print('==========================================');
                  print('==========================================');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>
                      ///fhfghdf
                          otloginpmvc(txt:'Log in',email:email,)
                        ///fhfghdf
                      ));
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
          )
        ],
      ),
    );
  }

}