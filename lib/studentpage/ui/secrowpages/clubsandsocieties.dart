//clubsandsocieties.dart
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../../../color.dart';
import '../../navcontroller.dart';
import '../homepages/profilepage.dart';
import '../widget/button.dart';
import '../widget/checklist.dart';
import 'clubsprofile.dart';

class clubsandsocieties extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _clubsandsocietiesstate();
  }
}
class _clubsandsocietiesstate extends State<clubsandsocieties>{
  @override
  Widget build(BuildContext context) {
    bool istabed=false;
    var _sitting=0;
    final NavbarController _navbarController = Get.put(NavbarController());
    var screensize=MediaQuery.of(context).size;
   return Scaffold(
     body: istabed==true?_navbarController.widgets[_sitting]:ListView(
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
               margin: EdgeInsets.only(right: screensize.width*0.05,top: 5),
               child:  Align(
                // alignment: AlignmentDirectional.topStart,
                 child: Row(
                   children: [
                     Image.asset('images/menmenu.png'),
                     SizedBox(width: 5,),
                     Text('My Memberships',
                       style: TextStyle(
                           fontFamily: 'Satoshi-Medium',
                           color: Colors.black,
                           fontWeight:FontWeight.w400,
                           fontSize: 12
                       ),
                     )
                   ],
                 ),
               ),
             ),
           ],
         ),
         SizedBox(height: screensize.height*0.006,),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Container(
               margin: EdgeInsets.only(left: screensize.width*0.06),
               child:  Align(
                 alignment: AlignmentDirectional.topStart,
                 child: Column(children: [
                   Text('Clubs &',
                     style:TextStyle(
                         fontFamily: 'Satoshi-Medium',
                         color: Colors.black,
                         fontWeight:FontWeight.w700,
                         fontSize: 32
                     ),
                   ),
                   Text(' Societies',
                     style:TextStyle(
                         fontFamily: 'Satoshi-Medium',
                         color: Colors.black,
                         fontWeight:FontWeight.w700,
                         fontSize: 32
                     ),
                   )
                 ],),
               ),
             ),
             Container(
               margin: EdgeInsets.only(right: screensize.width*0.09),
               child: Image.asset('images/searchformar.png',
               ),
             ),
           ],
         ),
         SizedBox(height: screensize.height*0.06,),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Butn(txt: 'Societies',color: splashgragy,btnhight: 27,
                 fontwiew: FontWeight.w400,Size: 14
                 ,marginbottom: 15,marginleft: 10,marginright: 10,margintop: 0
                 ,btnwidth: screensize.width*0.4,color2:splashgragy ,
                 pageroute: clubsprofile(),
                 dosomething: (){
                 },
                 colorbtntxt: Colors.black,
                     radvalue: 15),
             Butn(txt: 'Clubs',color: splashgragy,btnhight: 27,
                 fontwiew: FontWeight.w400,Size: 14
                 ,marginbottom: 15,marginleft: 10,marginright: 10,margintop: 0
                 ,btnwidth: screensize.width*0.4,color2:splashgragy,
                 pageroute: Profilepage(),
                 dosomething: (){
                 },
                 colorbtntxt: Colors.black,
                   radvalue: 15),
           ],
         ),
         //here
         SizedBox(height: screensize.height*0.01,),
         clubbuild(txt: 'Society', txt2: 'Aikido Society',),
         SizedBox(height: screensize.height*0.01,),
         clubbuild(txt: 'Society', txt2: 'Archery Society',),
         SizedBox(height: screensize.height*0.01,),
         clubbuild(txt: 'Society', txt2: 'Athletics Society',),
         SizedBox(height: screensize.height*0.01,),
         clubbuild(txt: 'Society', txt2: 'AAthletics Society',),
         SizedBox(height: screensize.height*0.01,),
         clubbuild(txt: 'Society', txt2: 'Athletics Society',),
       ],
     ),
     bottomNavigationBar: Container(
       decoration: BoxDecoration(
           border: Border.symmetric(horizontal: BorderSide(width: 1,color: Colors.black))
       ),
       child: Padding(
         padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
         child: GNav(
           color: Colors.white,
           activeColor: Colors.grey.shade400,
           padding: EdgeInsets.all(10),
           hoverColor: Colors.grey.shade500,
           style: GnavStyle.google,
           gap: 8,
           onTabChange: (index){
             setState(() {
               istabed=true;
               _sitting=index;
               print("sitting =$istabed");
             });
           },
           tabs: [
             GButton(
               text: 'Home',
               icon: FontAwesomeIcons.house,iconColor: Colors.black,
               onPressed:(){

               },),
             GButton(
               text: 'Deals',
               icon: FontAwesomeIcons.tag,iconColor: Colors.black,
             ),
             GButton(
                 text: 'Inbox',
                 icon: FontAwesomeIcons.paperPlane,iconColor: Colors.black),
             GButton(
                 text: 'Notifications',
                 icon: FontAwesomeIcons.bell,iconColor: Colors.black),
             GButton(
                 text: 'Menu',
                 semanticLabel: Navigator.defaultRouteName,
                 icon: FontAwesomeIcons.bars,iconColor: Colors.black),
           ],

         ),
       ),
     ),
   );
  }

}