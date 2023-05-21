///twofinyouraccount
import 'package:ecampus/studentpage/mainpage.dart';
import 'package:flutter/Material.dart';

import '../color.dart';
///twofinyouraccount
class twofinyouraccount extends StatefulWidget{
  var docs='';
  var url;
  TextEditingController email=new TextEditingController();
  twofinyouraccount({required this.docs,
    required this.email,required this.url});
  @override
  State<StatefulWidget> createState() {
    return _twofinyouraccountstate(url: this.url,docs: this.docs,email: this.email);
  }
}
class _twofinyouraccountstate extends State<twofinyouraccount>{
  var docs='';
  var url;
  TextEditingController email=new TextEditingController();
  _twofinyouraccountstate({required this.docs,
    required this.email,required this.url});
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 15,),
          Container(
            alignment: AlignmentDirectional.topStart,
            margin: EdgeInsets.only(left: 10),
            child: Image.asset('images/x.png'),
          ),
          Container(
            margin: EdgeInsets.only(left: screensize.width*0.06),
            child:  Align(
              alignment: AlignmentDirectional.topStart,
              child:  Text('Verification',
                style:TextStyle(
                    fontFamily: 'Satoshi-Medium',
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
              child:  Text('completed',
                style:TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight:FontWeight.w700,
                    fontSize: 32
                ),
              ),
            ),
          ),
          /// completed
          SizedBox(height: screensize.height*0.003,),
          Container(
            margin: EdgeInsets.only(left: 30),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text('Congratulations! We have verified your account and now you can enjoy using your account.',
                style:TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight:FontWeight.w400,
                    fontSize: 13
                ),
              ),
            ),
          ),
          ///start
          SizedBox(
            height: screensize.height*0.2,
          ),
          Container(
            alignment: AlignmentDirectional.center,
            height:200,
            width:200,
            child: Image.asset('images/mvc/Group 162821.png'),
          ),
          SizedBox(
            height: screensize.height*0.24,
          ),
          Container(
            margin: EdgeInsets.only(right: 15,left:15
                ,top:15,bottom:15),
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
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => mainpage(),));
            },
              style:ButtonStyle(
                backgroundColor: MaterialStateProperty.all(splashcolor),
                elevation: MaterialStateProperty.all(3),
              ),
              child: Center(
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child:   Text('OK',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color:Colors.white,
                        fontWeight:FontWeight.w700,
                        fontSize: 16
                    ),
                  ),
                ) ,
              ),

            ),
          ),
          SizedBox(height: 5,),
        ],
      ),
    );
  }

}