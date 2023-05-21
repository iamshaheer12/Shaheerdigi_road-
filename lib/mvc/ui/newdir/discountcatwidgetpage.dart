import 'package:flutter/material.dart';
class discountcatwidgetpage extends StatefulWidget{
  var txt='';
 var img='';
  discountcatwidgetpage({required this.txt,
                         required this.img});
  @override
  State<StatefulWidget> createState() {
    return _discountcatwidgetpagestate(txt: this.txt,
    img: this.img);
  }
}
class _discountcatwidgetpagestate extends State<discountcatwidgetpage>{
  var txt='';
  var img='';
  _discountcatwidgetpagestate({required this.txt,
    required this.img});
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView(
       children: [

       ],
     ),
   );
  }

}