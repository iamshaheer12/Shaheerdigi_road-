import 'package:awesome_dialog/awesome_dialog.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../../color.dart';
import 'package:intl/intl.dart';
import '../identityquickphoto.dart';
class verifyyouridentity extends StatefulWidget{
  TextEditingController email=new TextEditingController();
 // CollectionReference users = FirebaseFirestore.instance.collection('user');
  var docs='';
  verifyyouridentity({required this.email,required this.docs});
  @override
  State<StatefulWidget> createState() {
    return _verifyyouridentitysate(email: this.email,docs: this.docs);
  }
}

class _verifyyouridentitysate extends State<verifyyouridentity>{
  String mytime=DateFormat('dd-MM-yyyy').format(DateTime.now());
  TextEditingController email=new TextEditingController();
  TextEditingController fname=new TextEditingController();
  TextEditingController lname=new TextEditingController();
  TextEditingController dateofbirth=new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  var docs='';
  bool isdatepicked=false;
  pickerdata() async{
    await showDatePicker(
        context: context,
        initialDate: DateTime(2000),
        firstDate: DateTime(1950),
        lastDate: DateTime(2004),

        ).then((value) {
      setState(() {
        mytime='${value!.day}/${value.month}/${value.year}';
        print('----------------------------------------');
        print('----------------------------------------');
        print('-----${mytime}------');
        print('----------------------------------------');
        print('----------------------------------------');
        isdatepicked=true;
      });
    });
  }
@override
  void initState() {

    super.initState();
  }
  //CollectionReference users = FirebaseFirestore.instance.collection('user');
  _verifyyouridentitysate({required this.email,required this.docs});
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
      body:ListView(
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
                  child: Image.asset('images/mvc/offline.png'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10,left: 10),
                  child: Image.asset('images/mvc/offline.png'),
                ),
              ],
            ),
          ),
    SizedBox(height: screensize.height*0.003,),
    Container(
    alignment: AlignmentDirectional.topStart,
    margin: EdgeInsets.only(left: screensize.width*0.05,top: 15),
    child: InkWell(
    onTap: (){
    Navigator.pop(context);
    },
    child: Image.asset('images/mvc/coloredbackarrow.png')),
    ),
    SizedBox(height: screensize.height*0.008,),
    Container(
    margin: EdgeInsets.only(left: screensize.width*0.06),
    child:  Align(
    alignment: AlignmentDirectional.topStart,
    child:  Text('Tell us about yourself',
    style: TextStyle(
        fontFamily: 'Satoshi-Variable',
    color: Colors.black,
    fontWeight:FontWeight.w700,
    fontSize: 32
    ),
    ),
    ),
    ),
    SizedBox(height: screensize.height*0.003,),
    Stack(
    children: [
    Container(
    margin: EdgeInsets.only(left: 30),
    child: Align(
    alignment: AlignmentDirectional.topStart,
    child: Text('We need this information to verify your identity.',
    style: TextStyle(
    fontFamily: 'Satoshi-Medium',
    color: seconpagecolors,
    fontWeight:FontWeight.w400,
    fontSize: 13
    ),
    ),
    ),
    )
    ],
    ),
    SizedBox(height: screensize.height*0.07,),
           Form(
               key:_formKey,
               child: Column(children: [
             Container(
               margin: EdgeInsets.only(right: 15,left: 15),
               width: screensize.width,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(5),
                   border: Border.all(
                       width: 0.1,color: Colors.black
                   ),
                   shape: BoxShape.rectangle
               ),
               child: TextFormField(
                 controller: fname,
                 validator: (value){
                   if (value == null || value.isEmpty) {
                     return 'Legal first name';
                   }
                   return null;
                 },
                 decoration: InputDecoration(
                     hintText: '     Legal first name',
                     contentPadding: EdgeInsets.only(left: 15),
                     hintStyle: TextStyle(
                       fontFamily: 'Satoshi-Medium',
                       color:Colors.black,
                       fontWeight:FontWeight.w400,
                       fontSize: 13,
                     )
                 ),
               ),
             ),
             ///second fieled
             SizedBox(height: screensize.height*0.03,),
             Container(
               margin: EdgeInsets.only(right: 15,left: 15),
               // height:56 ,
               width: screensize.width,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(5),
                   border: Border.all(
                       width: 0.1,color: Colors.black
                   ),
                   shape: BoxShape.rectangle
               ),
               child: TextFormField(
                 controller: lname,
                 validator: (value){
                   if (value == null || value.isEmpty) {
                     return 'Legal last name';
                   }
                   return null;
                 },
                 decoration: InputDecoration(
                     hintText: '     Legal last name',
                     contentPadding: EdgeInsets.only(left: 15),
                     hintStyle: TextStyle(
                       fontFamily: 'Satoshi-Medium',
                       color:Colors.black,
                       fontWeight:FontWeight.w400,
                       fontSize: 13,
                     )
                 ),
               ),
             ),
             ///third fieled
             SizedBox(height: screensize.height*0.03,),
             Container(
               margin: EdgeInsets.only(right: 15,left: 15),
               width: screensize.width,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(5),
                   border: Border.all(
                       width: 0.1,color: Colors.black
                   ),
                   shape: BoxShape.rectangle
               ),
               child: TextFormField(
                 onTap: ()async{
                   pickerdata();
                   setState(() {
                     isdatepicked=true;
                   });
                 },
                 controller: dateofbirth,
                 decoration: InputDecoration(
                     contentPadding: EdgeInsets.only(left: 15),
                     hintText:isdatepicked==true?'${mytime}':'     Date of birth (DD/MM/YYYY)',
                     hintStyle: TextStyle(
                       fontFamily: 'Satoshi-Medium',
                       color:Colors.black,
                       fontWeight:FontWeight.w400,
                       fontSize: 13,
                     )
                 ),
               ),
             ),
           ],)),
          SizedBox(height: screensize.height*0.013,),
          Stack(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 5,top: 3),
                  child: Image.asset('images/infologo.png')),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text('Use your official name used with your university to match your university ID card',
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
          SizedBox(
            height: screensize.height*0.25,
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
              if (_formKey.currentState!.validate()){
              
                  //   Navigator.push(context,MaterialPageRoute(builder:
                  //       (context) => identityquickphoto(docs: '${this.docs}',
                  //           email:this.email ),));
        
                  // AwesomeDialog(
                  //   context: context,
                  //   dialogType: DialogType.info,
                  //   borderSide: const BorderSide(
                  //     color: Colors.green,
                  //     width: 2,
                  //   ),
                  //   width: 280,
                  //   buttonsBorderRadius: const BorderRadius.all(
                  //     Radius.circular(2),
                  //   ),
                  //   dismissOnTouchOutside: true,
                  //   dismissOnBackKeyPress: false,
                  //   headerAnimationLoop: false,
                  //   animType: AnimType.bottomSlide,
                  //   title: 'error',
                  //  // desc: '-$e-',
                  //   showCloseIcon: true,
                  //   btnCancelOnPress: () {},
                  //   btnOkOnPress: () {},
                  // ).show();
                
              }
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
  // Future<void>? addUser() {
  //   print('url:---------');
  //   //Call the user's CollectionReference to add a new user
  //   return
  //     users.doc('${docs}').set({
  //       'Legal first name': fname.text, // John Doe
  //       'Legal last name': lname.text,
  //       'Date of birth (DD/MM/YYYY)':mytime.toString(),
  //     },SetOptions(merge: true)).then((value) => print("User Added"))
  //         .catchError((error) => print("Failed to add user: $error"));
  // }
}