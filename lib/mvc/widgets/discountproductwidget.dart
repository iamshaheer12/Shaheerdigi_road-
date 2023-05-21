import 'package:flutter/material.dart';

import '../../color.dart';

class discountproductwidget extends StatefulWidget{
  String firsttxt='';
  String secondtxt='';
  String mainimage='';
  String logoimage='';
  Color logocolor=Color(0xFF3e3e3e66);
  discountproductwidget({required this.firsttxt,required this.secondtxt,
                       required this.logoimage,required this.mainimage,
                   required this.logocolor});
  @override
  State<StatefulWidget> createState() {
       return _discountproductwidgetstate(firsttxt: this.firsttxt,
           secondtxt: this.secondtxt,mainimage: this.mainimage,logoimage: this.logoimage,
           logocolor: this.logocolor);
  }
}
class _discountproductwidgetstate extends State<discountproductwidget>{
  String firsttxt='';
  String secondtxt='';
  String mainimage='';
  String logoimage='';
  Color logocolor=Color(0xFF3e3e3e66);
  _discountproductwidgetstate({required this.firsttxt,required this.secondtxt,
    required this.logoimage,required this.mainimage,required this.logocolor});
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Container(
      width: screensize.width*0.44,
      child: Stack(
        children: [
          Container(
            // margin: EdgeInsets.only(left: screensize.width*0.049),
            decoration: BoxDecoration(
                color: discountcolor,
                borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child: Image.asset('images/mvc/$mainimage'),
            ),
          Container(
            width: 35,
            height: 35,
            margin: EdgeInsets.only(top:screensize.height*0.14,left: 10),
            decoration: BoxDecoration(
            color: logocolor,
            border: Border.all(width: 1),
            borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            child: Image.asset('images/mvc/$logoimage'),
          ),
          Container(
            margin: EdgeInsets.only(top:screensize.height*0.18),
            child: Align(
              alignment: AlignmentDirectional.center,
              child:  Text('$firsttxt',
                style: TextStyle(
                    fontFamily: 'Satoshi-Variable',
                    color: Colors.black,
                    fontWeight:FontWeight.w700,
                    fontSize: 13
                ),
              ) ,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:screensize.height*0.21),
            child: Align(
              alignment: AlignmentDirectional.center,
              child:  Text('$secondtxt',
                style: TextStyle(
                    fontFamily: 'Satoshi-Variable',
                    color: onlineocolors,
                    fontWeight:FontWeight.w500,
                    fontSize: 10
                ),
              ) ,
            ),
          ),
        ],
      ),
    );
  }

}