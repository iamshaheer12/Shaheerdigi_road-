///adminmainpage.dart
import 'package:ecampus/mvc/adminpages/adminmainpages/products.dard.dart';
import 'package:ecampus/studentpage/ui/secrowpages/chat.dart';
import 'package:flutter/material.dart';
import '../../../color.dart';
import 'adminhomepage.dart';
import 'calendar.dart';
import 'members.dart';
class adminmainpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _adminmainpagestate();
  }
}

class _adminmainpagestate extends State<adminmainpage>{
  List pages=[
    adminhomepage(),
    products(),
    chatpage(),
    Members(),///menu
    calendar(),
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
        bottomNavigationBar: BottomNavigationBar(
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
            BottomNavigationBarItem(label:'Products',icon:
            Image.asset('images/mvc/sitting/Products.png')
            ),
            BottomNavigationBarItem(label:'Inbox',icon:select==2?
            Image.asset('images/mvc/selectedchat.png'):
            Image.asset('images/mvc/unselectedchat.png')),
            BottomNavigationBarItem(label:'Members',icon:
            Image.asset('images/mvc/sitting/Members.png')
            ),
            BottomNavigationBarItem(label:'Calendar',icon:
            Image.asset('images/mvc/sitting/Calendar.png')
            ),
          ],
        ),
        ///_sitting
        body:pages[select]
      //_navbarController.widgets[_sitting],
    );
  }
}
