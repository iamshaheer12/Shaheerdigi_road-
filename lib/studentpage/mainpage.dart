import 'package:ecampus/studentpage/ui/secrowpages/campus.dart';
import 'package:ecampus/studentpage/ui/secrowpages/chat.dart';
import 'package:ecampus/studentpage/ui/secrowpages/menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../color.dart';
import '../mvc/homemvc.dart';
import '../mvc/ui/menupages/discuontpage.dart';
import '../newcamicon_icons.dart';
import 'navcontroller.dart';
class mainpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _mainpagestate();
  }
}
class _mainpagestate extends State<mainpage>{
  final NavbarController _navbarController = Get.put(NavbarController());
  List pages=[
    homemvc(),
    discuontpage(),
    chatpage(),
    campuspage(),///menu
    menu(),
  ];

  void ontapnavpar(int value){
    setState(() {
      select=value;
    });
  }
  var select=0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     bottomNavigationBar:BottomNavigationBar(
       selectedItemColor: splashcolor,
       unselectedItemColor: Colors.grey.shade500,
       currentIndex: select,
       elevation: 14,
      onTap: ontapnavpar,
      showSelectedLabels: true,
       showUnselectedLabels: true,
       items: [
     BottomNavigationBarItem(label:'home',icon:select==0?
     Image.asset('images/mvc/selectedhome.png'):
     Image.asset('images/mvc/unselectedhome.png')),
     BottomNavigationBarItem(label:'Discount',icon:Icon(Newcamicon.discount)
   ),
     BottomNavigationBarItem(label:'Inbox',icon:select==2?
     Image.asset('images/mvc/selectedchat.png'):
     Image.asset('images/mvc/unselectedchat.png')),
      BottomNavigationBarItem(label:'Notifications',icon:Icon(FontAwesomeIcons.bell)
    ),
         BottomNavigationBarItem(label:'Menu',icon:Icon(FontAwesomeIcons.bars)
        ),
       ],
     ),
     ///_sitting
     body:pages[select]
     //_navbarController.widgets[_sitting],
   );
  }
}



// Container(
// decoration: BoxDecoration(
// border: Border.symmetric(horizontal: BorderSide(width: 1,color: Colors.black))
// ),
// child: Padding(
// padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
// child:
// GNav(
// color: Colors.grey.shade400,
// activeColor: splashcolor,
// padding: EdgeInsets.all(10),
// hoverColor: Colors.grey.shade500,
// style: GnavStyle.google,
// gap: 8,
// onTabChange: (index){
// setState(() {
// _sitting=index;
// print("sitting =$_sitting");
// });
// },
// tabs: [
// GButton(
// text: 'Home',
// icon:
// Newcamicon.clkhome,
// //iconColor:select==1?splashgragy:splashcolor
// onPressed:(){
// setState(() {
// select=1;
// });
// },
// )
// ,
// GButton(
// text: 'Discount',
// icon:Newcamicon.discount,
// onPressed:(){
// setState(() {
// select=2;
// });
// },
// ),
// GButton(
// text: 'Inbox',
// icon: select==3?Newcamicon.inbox:Newcamicon.clkchat,
// onPressed:(){
// setState(() {
// select=3;
// });
// },
// ),
// GButton(
// text: 'Notifications',
// icon: FontAwesomeIcons.bell),
// GButton(
// text: 'Menu',
// semanticLabel: Navigator.defaultRouteName,
// icon: FontAwesomeIcons.bars),
// ],
//
// ),
// ),
// )