import 'package:flutter/material.dart';
import '../../../color.dart';
import '../widget/button.dart';
import '../widget/newlistwidget.dart';
import 'clubsandsocieties.dart';
class Newlisting extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Newlistingstate();
  }
}
class _Newlistingstate extends State<Newlisting>{
  bool isChecked=false;
  bool isChecked2=false;
  bool isChecked3=false;
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: screensize.height*0.006,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: AlignmentDirectional.topStart,
                margin: EdgeInsets.only(left: screensize.width*0.05,top: 15),
                child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Image.asset('images/backarrow.png')),
              ),
              Container(
                margin: EdgeInsets.only(right: screensize.width*0.38),
                child:  Align(
                  alignment: AlignmentDirectional.topStart,
                  child:  Text('New listing',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: Colors.black,
                        fontWeight:FontWeight.w700,
                        fontSize: 20
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: screensize.height*0.003,),
      Align(
        alignment: AlignmentDirectional.topStart,
        child: Container(
          margin: EdgeInsets.only(left: screensize.width*0.04),
          height: 149,
          width: 113,
          child: Column(
            children: [
              Center(
                child: Container(
                  alignment: AlignmentDirectional.center,
                  margin: EdgeInsets.only(left:
                  screensize.width*0.01,
                      top: 45,bottom: 10),
                  child: Image.asset('images/addphoto.png'),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
              color: splashgragy
          ),
        ),
      ),
          SizedBox(height: screensize.height*0.006,),
          Container(
            margin: EdgeInsets.only(left: screensize.width*0.03),
            child:  Align(
              alignment: AlignmentDirectional.topStart,
              child:  Text('Photos: 0/10',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight:FontWeight.w700,
                    fontSize: 10
                ),
              ) ,
            ),
          ),
          ///start
          SizedBox(height: screensize.height*0.009,),
          Container(
            margin: EdgeInsets.only(left:screensize.width*0.025
                ,top: screensize.height*0.009),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child:  Text('Personal information',
                style:TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight:FontWeight.w400,
                    fontSize: 12
                ),
              ) ,
            ),
          ),
          //start first one
          SizedBox(height: screensize.height*0.009,),
          newlsistwidget(txt: 'Title',isthereareimage: false,),
          //end first one
          SizedBox(height: screensize.height*0.009,),
          newlsistwidget(txt: 'Price',isthereareimage: false,),
          SizedBox(height: screensize.height*0.009,),
          newlsistwidget(txt: 'Category',isthereareimage: true,),
          //end first one
          SizedBox(height: screensize.height*0.009,),
          newlsistwidget(txt: 'Condition',isthereareimage: true,),
          SizedBox(height: screensize.height*0.009,),
          newlsistwidget(txt: 'Tags',isthereareimage: false,),
          SizedBox(height: screensize.height*0.04,),
          Container(
            margin: EdgeInsets.only(left: screensize.width*0.03),
            child:  Align(
              alignment: AlignmentDirectional.topStart,
              child:  Text('Meetup preferences',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight:FontWeight.w700,
                    fontSize: 12
                ),
              ) ,
            ),
          ),
          Row(
            children: [
              Container(
                alignment: AlignmentDirectional.topStart,
                margin: EdgeInsets.only(left:
                screensize.width*0.03,
                    ),
                child: Image.asset('images/p.png'),
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child:  Text('Public meetup',
                  style:TextStyle(
                      fontFamily: 'Satoshi-Medium',
                      color: Colors.black,
                      fontWeight:FontWeight.w700,
                      fontSize: 10
                  ),
                ) ,
              ),
              Container(
                margin: EdgeInsets.only(left: screensize.width*0.64),
                child: Checkbox(
                  checkColor: Colors.white,
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              )
            ],
          ),
          SizedBox(height: screensize.height*0.01,),
          ///first check
          Row(
            children: [
              Container(
                alignment: AlignmentDirectional.topStart,
                margin: EdgeInsets.only(left:
                screensize.width*0.03,
                ),
                child: Image.asset('images/door.png'),
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child:  Text('Door pick-up',
                  style:TextStyle(
                      fontFamily: 'Satoshi-Medium',
                      color: Colors.black,
                      fontWeight:FontWeight.w700,
                      fontSize: 10
                  ),
                ) ,
              ),
              Container(
                margin: EdgeInsets.only(left: screensize.width*0.65),
                child: Checkbox(
                  checkColor: Colors.white,
                  value: isChecked2,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked2 = value!;
                    });
                  },
                ),
              )
            ],
          ),
          SizedBox(height: screensize.height*0.01,),
          ///scond check
          Row(
            children: [
              Container(
                alignment: AlignmentDirectional.topStart,
                margin: EdgeInsets.only(left:
                screensize.width*0.03,
                ),
                child: Image.asset('images/door.png'),
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child:  Text('Door drop-off',
                  style: TextStyle(
                      fontFamily: 'Satoshi-Medium',
                      color: Colors.black,
                      fontWeight:FontWeight.w700,
                      fontSize: 10
                  ),
                ) ,
              ),
              Container(
                margin: EdgeInsets.only(left: screensize.width*0.64),
                child: Checkbox(
                  checkColor: Colors.white,
                  value: isChecked3,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked3 = value!;
                    });
                  },
                ),
              )
            ],
          ),
          SizedBox(height: screensize.height*0.01,),
          ///third check
          Center(
            child:Butn(txt: 'Publish',color:splashgragy,btnhight: 34,
                fontwiew: FontWeight.w400,Size: 14
                ,marginbottom: 15,marginleft: 10,marginright: 10,margintop: 15
                ,btnwidth: screensize.width*0.6,color2:splashgragy,
                pageroute: clubsandsocieties(),
                dosomething: (){

                },
              colorbtntxt: Colors.black,radvalue: 15),
          )
        ],
      ),
    );
  }
}