
import 'package:flutter/material.dart';
///categorybestdescribes
import '../../color.dart';
import 'adminmainpages/aboutadminpage.dart';
import 'adminmainpages/adminmainpage.dart';
class categorybestdescribes extends StatefulWidget{
  var structure='';
  TextEditingController email=new TextEditingController();
  TextEditingController nameofsos=new TextEditingController();
  categorybestdescribes({required this.structure,required this.nameofsos,
    required this.email});
  @override
  State<StatefulWidget> createState() {
    return _categorybestdescribesstate(structure: this.structure,nameofsos: this.nameofsos,
        email: this.email);
  }}
class _categorybestdescribesstate extends State<categorybestdescribes>{
  var structure='';
  var docs='';
  //CollectionReference adminusers = FirebaseFirestore.instance.collection('adminuser');
  TextEditingController email=new TextEditingController();
  TextEditingController nameofsos=new TextEditingController();
  TextEditingController categorybestdes=new TextEditingController();
  _categorybestdescribesstate({required this.structure,required this.nameofsos,
    required this.email});
 // var crnuser=FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
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
          SizedBox(height: screensize.height*0.026,),
          Container(
            margin: EdgeInsets.only(left: screensize.width*0.04),
            child:  Align(
              alignment: AlignmentDirectional.topStart,
              child:  Text('What category best describes ${structure}?',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight:FontWeight.w700,
                    fontSize: 28
                ),
              ),
            ),
          ),
          SizedBox(height: screensize.height*0.0039,),
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Container(
              margin: EdgeInsets.only(left:screensize.width*0.04,right:screensize.width*0.04
              ),
              child: Text('A category will help people find this page in search results.',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: seconpagecolors,
                    fontWeight:FontWeight.w500,
                    fontSize: 13
                ),
              ),
            ),
          ),
          SizedBox(height: screensize.height*0.029,),
          Container(
            height: 60,
            width: screensize.width*0.7,
            margin: EdgeInsets.only(right: 20,left: 20,top: 10),
            decoration: BoxDecoration(
                border: Border.all(width: 0.1,color: Colors.black),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5)
            ),
            child: TextField(
              textAlign: TextAlign.left,
              controller: categorybestdes,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 15,top: 15),
                  hintText:  '   Category',
                  hintStyle: TextStyle(
                    fontFamily: 'Satoshi-Variable',
                    color:adidaslogocfdolors,
                    fontWeight:FontWeight.w400,
                    fontSize: 13,
                  )
              ),
            ),
          ),
          SizedBox(
            height: screensize.height*0.54,
          ),
          ///event horizen
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
            // await FirebaseAuth.instance.createUserWithEmailAndPassword(
            //     email: email.text,
            //     password: '${email.text}@12345',
            //   ).then((value)async{
               
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => aboutadminpage(),));
            
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
        ],
      ),
    );
  }
  // Future<void>? addAdminUser() {
  //   return adminusers.add({
  //     'username': email.text,
  //     'current username':crnuser!.email.toString(),// John Doe
  //     'structure': structure,
  //     'nameOfStructure':nameofsos.text,
  //     'categorybestdes':categorybestdes.text,
  //     'isadmin':'true'
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
}