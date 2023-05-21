import 'package:flutter/material.dart';
import '../../color.dart';
import '../../studentpage/ui/widget/button.dart';
import '../secondcameracheckid.dart';

class selectandupload extends StatefulWidget{
  var docs='';
  TextEditingController email=new TextEditingController();
  selectandupload({required this.docs,required this.email});
  @override
  State<StatefulWidget> createState() {
    return _selectanduploadstate(docs: this.docs,email: this.email);
  }
}
class _selectanduploadstate extends State<selectandupload>{
  TextEditingController email=new TextEditingController();
  int _value = 0;
  var docs='';
  _selectanduploadstate({required this.docs,required this.email});
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
          SizedBox(height: screensize.height*0.003,),
          Container(
            margin: EdgeInsets.only(left: screensize.width*0.06),
            child:  Align(
              alignment: AlignmentDirectional.topStart,
              child:  Text('Select and upload',
                style:TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight:FontWeight.w700,
                    fontSize: 32
                ),
              ),
            ),
          ),
          SizedBox(height: screensize.height*0.003,),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text('We need a valid document to confirm you reside in Ireland and verify who you are. Data is processed securely.',
                    style:TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: splashgragy,
                        fontWeight:FontWeight.w400,
                        fontSize: 13
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text('Did you move from Ukraine during war?',
                    style:TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: splashcolor,
                        fontWeight:FontWeight.w400,
                        fontSize: 13
                    ),
                  ),
                ),
              ),
            ],
          ),
          ///start
          SizedBox(height: 20,),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [

             Row(
               children: [
                 Container(
                   width: 33,
                   height: 31,
                   margin: EdgeInsets.only(left: 17),
                   decoration: BoxDecoration(
                     color: splashgragy,
                     borderRadius: BorderRadius.circular(100),
                   ),
                   child: Center(child: Image.asset('images/mvc/cont.png')),
                 ),
                 Column(
                   children: [
                     Row(children: [
                       Container(
                         width: 48,
                         height: 19,
                         margin: EdgeInsets.only(left: 2,top:5),
                         decoration: BoxDecoration(
                         ),
                         child: Center(child: Image.asset('images/mvc/sid.png')),
                       ),
                       Align(
                         alignment: AlignmentDirectional.topStart,
                         child:Container(
                           margin: EdgeInsets.only(left: screensize.width*0.001,top: 10
                           ),
                           child:  Text('Student ID',
                             style: TextStyle(
                                 fontFamily: 'Satoshi-Medium',
                                 color: Colors.black,
                                 fontWeight:FontWeight.w400,
                                 fontSize: 16
                             ),
                           ),
                         ),
                       ),
                     ],),
                   ],
                 )
               ],
             ),
             Container(
                 margin: EdgeInsets.only(right: 20),
                 child: Radio(
                 value: 1,
                 groupValue: _value,
                  activeColor: Color(0xFF6200EE),
                   onChanged: (int? value) {
                     setState(() {
                       _value = value!;
                     });
                   },
                 )),
           ],
         ),
          SizedBox(height: 5,),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     countrycodewidbuild(mainimg: 'cont.png',flogoimg: 'ukflag.png',
      //     text1: '     Visa    '
      //     ,seclogoimg: 'usaflag.png',text2: 'Passport',
      //     pageroute: mainpage()),
      //     Container(
      //         margin: EdgeInsets.only(right: 20),
      //         child: Radio(
      //           value: 2,
      //           groupValue: _value,
      //           activeColor: Color(0xFF6200EE),
      //           onChanged: (int? value) {
      //             setState(() {
      //               _value = value!;
      //             });
      //           },
      //         )),
      //   ],
      // ),
          SizedBox(height: 5,),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     countrycodewidbuild(mainimg: 'cont.png',flogoimg: 'ukflag.png',
      //     text1: '     Visa           '
      //     ,seclogoimg: 'usaflag.png',text2: 'Identity card',
      //     pageroute: mainpage()),
      //     Container(
      //         margin: EdgeInsets.only(right: 20),
      //         child: Radio(
      //           value: 3,
      //           groupValue: _value,
      //           activeColor: Color(0xFF6200EE),
      //           onChanged: (int? value) {
      //             setState(() {
      //               _value = value!;
      //             });
      //           },
      //         )),
      //   ],
      // ),
          SizedBox(height: 5,),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     countrycodewidbuild(mainimg: 'cont.png',flogoimg: 'ukflag.png',
      //     text1: 'Residence permit card'
      //     ,seclogoimg: 'usaflag.png',text2: '           Passport              ',
      //     pageroute: mainpage()),
      //     Container(
      //         margin: EdgeInsets.only(right: 20),
      //         child: Radio(
      //           value: 4,
      //           groupValue: _value,
      //           activeColor: Color(0xFF6200EE),
      //           onChanged: (int? value) {
      //             setState(() {
      //               _value = value!;
      //             });
      //           },
      //         )),
      //   ],
      // ),
          SizedBox(height: 5,),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     countrycodewidbuild(mainimg: 'cont.png',flogoimg: 'ukflag.png',
      //         text1: 'Residence permit card'
      //         ,seclogoimg: 'usaflag.png',text2: '           Identity card       ',
      //         pageroute: mainpage()),
      //     Container(
      //         margin: EdgeInsets.only(right: 20),
      //         child: Radio(
      //           value: 5,
      //           groupValue: _value,
      //           activeColor: Color(0xFF6200EE),
      //           onChanged: (int? value) {
      //             setState(() {
      //               _value = value!;
      //             });
      //           },
      //         )),
      //   ],
      // ),
          SizedBox(height: 5,),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     countrycodewidbuild(mainimg: 'cont.png',flogoimg: 'ukflag.png',
          //     text1: 'Work permit'
          //     ,seclogoimg: 'usaflag.png',text2: '       Passport',
          //     pageroute: mainpage()),
          //     Container(
          //         margin: EdgeInsets.only(right: 20),
          //         child: Radio(
          //           value: 6,
          //           groupValue: _value,
          //           activeColor: Color(0xFF6200EE),
          //           onChanged: (int? value) {
          //             setState(() {
          //               _value = value!;
          //             });
          //           },
          //         )),
          //   ],
          // ),
          SizedBox(height: 5,),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     countrycodewidbuild(mainimg: 'cont.png',flogoimg: 'ukflag.png',
          //         text1: 'Work permit'
          //         ,seclogoimg: 'usaflag.png',text2: 'Identity card',
          //         pageroute: mainpage()),
          //     Container(
          //         margin: EdgeInsets.only(right: 20),
          //         child: Radio(
          //           value: 7,
          //           groupValue: _value,
          //           activeColor: Color(0xFF6200EE),
          //           onChanged: (int? value) {
          //             setState(() {
          //               _value = value!;
          //             });
          //           },
          //         )),
          //   ],
          // ),
          SizedBox(
            height: screensize.height*0.02,
          ),
          Butn(txt: 'Continue',color:splashcolor,btnhight: 48,
            fontwiew: FontWeight.w400,Size: 16
            ,marginbottom: 15,marginleft: 15,marginright: 15,margintop: 15
            ,btnwidth: screensize.width,color2:splashcolor,
            pageroute:
            secondcheckcamerid(docs: '${this.docs}', email: this.email),
            dosomething: (){

            },
            colorbtntxt: Colors.white,
            radvalue: 5,),
        ],
      ),
    );
  }

}