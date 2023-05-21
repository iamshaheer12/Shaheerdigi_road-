import 'package:flutter/material.dart';
class discountproduct extends StatefulWidget{
  var firsttxt='';
  var secondtxt='';
  var mainimage='';
  var logoimage='';
  var logocolor=Color(0xFF4B4EFC);
  discountproduct({
    required this.firsttxt,
    required this.secondtxt,
    required this.mainimage,
    required this.logoimage,
    required this.logocolor
});
  @override
  State<StatefulWidget> createState() {
  return _discountproductstate(firsttxt: this.firsttxt,secondtxt: this.secondtxt,
  mainimage: this.mainimage,logoimage: this.logoimage,logocolor: this.logocolor);
  }
}
  class _discountproductstate extends State<discountproduct> {
    var firsttxt='';
    var secondtxt='';
    var mainimage='';
    var logoimage='';
    var logocolor=Color(0xFF4B4EFC);
    _discountproductstate({
      required this.firsttxt,
      required this.secondtxt,
      required this.mainimage,
      required this.logoimage,
      required this.logocolor
    });
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 0,right: 0),
            width: screensize.width,
            height: 200,
            decoration: mainimage==null? BoxDecoration(
                image: DecorationImage(image:AssetImage('images/mvc/loading.gif'),
                  fit: BoxFit.cover,
                )
            ):BoxDecoration(
                image: DecorationImage(image:AssetImage('images/mvc/$mainimage'),
                  fit: BoxFit.cover,
                )
            ),
          ),
        ],
      ),
    );
  }
  
  }