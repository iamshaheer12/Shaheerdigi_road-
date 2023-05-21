import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../../../color.dart';
import '../../navcontroller.dart';
import '../widget/trendcolumn.dart';

class Discounts extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _Discountsstate();
  }
}
class _Discountsstate extends State<Discounts>{
  bool istabed=false;
  var _sitting=0;
  final NavbarController _navbarController = Get.put(NavbarController());
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
      body:istabed==true?_navbarController.widgets[_sitting]:ListView(
        children: [
          SizedBox(height: screensize.height*0.006,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: screensize.width*0.06),
                child:  Align(
                  alignment: AlignmentDirectional.topStart,
                  child:  Text('Discounts',
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
                margin: EdgeInsets.only(right: screensize.width*0.06),
                child: Image.asset('images/searchformar.png',
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 44,
                      height: 41,
                      margin: EdgeInsets.only(right: 10,left: 10),
                      decoration: BoxDecoration(
                          color: splashgragy,
                          borderRadius: BorderRadius.circular(100)
                      ),
                    ),
                    SizedBox(height: screensize.height*0.001,),
                    Container(
                      margin: EdgeInsets.only(right: 10,left: 10),
                      child:  Align(
                        alignment: AlignmentDirectional.center,
                        child:  Text('Shopping',
                          style:TextStyle(
                              fontFamily: 'Satoshi-Medium',
                              color: Colors.black,
                              fontWeight:FontWeight.w400,
                              fontSize: 12
                          ),
                        ) ,
                      ),
                    ),
                  ],
                ),
                ///first form 7
                Column(
                  children: [
                    Container(
                      width: 44,
                      height: 41,
                      margin: EdgeInsets.only(right: 10,left: 10),
                      decoration: BoxDecoration(
                          color: splashgragy,
                          borderRadius: BorderRadius.circular(100)
                      ),
                    ),
                    SizedBox(height: screensize.height*0.001,),
                    Container(
                      margin: EdgeInsets.only(right: 10,left: 10),
                      child:  Align(
                        alignment: AlignmentDirectional.center,
                        child:  Text('Food',
                          style:TextStyle(
                              fontFamily: 'Satoshi-Medium',
                              color: Colors.black,
                              fontWeight:FontWeight.w400,
                              fontSize: 12
                          ),
                        ) ,
                      ),
                    ),
                  ],
                ),
                ///2 form 7
                Column(
                  children: [
                    Container(
                      width: 44,
                      height: 41,
                      margin: EdgeInsets.only(right: 10,left: 10),
                      decoration: BoxDecoration(
                          color: splashgragy,
                          borderRadius: BorderRadius.circular(100)
                      ),
                    ),
                    SizedBox(height: screensize.height*0.001,),
                    Container(
                      margin: EdgeInsets.only(right: 10,left: 10),
                      child:  Align(
                        alignment: AlignmentDirectional.center,
                        child:  Text('Fashion',
                          style: TextStyle(
                              fontFamily: 'Satoshi-Medium',
                              color: Colors.black,
                              fontWeight:FontWeight.w400,
                              fontSize: 12
                          ),
                        ) ,
                      ),
                    ),
                  ],
                ),
                ///3 form 7
                Column(
                  children: [
                    Container(
                      width: 44,
                      height: 41,
                      margin: EdgeInsets.only(right: 10,left: 10),
                      decoration: BoxDecoration(
                          color: splashgragy,
                          borderRadius: BorderRadius.circular(100)
                      ),
                    ),
                    SizedBox(height: screensize.height*0.001,),
                    Container(
                      margin: EdgeInsets.only(right: 10,left: 10),
                      child:  Align(
                        alignment: AlignmentDirectional.center,
                        child:  Text('Travel',
                          style:TextStyle(
                              fontFamily: 'Satoshi-Medium',
                              color: Colors.black,
                              fontWeight:FontWeight.w400,
                              fontSize: 12
                          ),
                        ) ,
                      ),
                    ),
                  ],
                ),
                ///4 form 7
                Column(
                  children: [
                    Container(
                      width: 44,
                      height: 41,
                      margin: EdgeInsets.only(right: 10,left: 10),
                      decoration: BoxDecoration(
                          color: splashgragy,
                          borderRadius: BorderRadius.circular(100)
                      ),
                    ),
                    SizedBox(height: screensize.height*0.001,),
                    Container(
                      margin: EdgeInsets.only(right: 10,left: 10),
                      child:  Align(
                        alignment: AlignmentDirectional.center,
                        child:  Text('Entertainment',
                          style: TextStyle(
                              fontFamily: 'Satoshi-Medium',
                              color: Colors.black,
                              fontWeight:FontWeight.w400,
                              fontSize: 12
                          ),
                        ) ,
                      ),
                    ),
                  ],
                ),
                ///5 form 7
                Column(
                  children: [
                    Container(
                      width: 44,
                      height: 41,
                      margin: EdgeInsets.only(right: 10,left: 10),
                      decoration: BoxDecoration(
                          color: splashgragy,
                          borderRadius: BorderRadius.circular(100)
                      ),
                    ),
                    SizedBox(height: screensize.height*0.001,),
                    Container(
                      margin: EdgeInsets.only(right: 10,left: 10),
                      child:  Align(
                        alignment: AlignmentDirectional.center,
                        child:  Text('Essentials',
                          style:TextStyle(
                              fontFamily: 'Satoshi-Medium',
                              color: Colors.black,
                              fontWeight:FontWeight.w400,
                              fontSize: 12
                          ),
                        ) ,
                      ),
                    ),
                  ],
                ),
                ///6 form 7
                Column(
                  children: [
                    Container(
                      width: 44,
                      height: 41,
                      margin: EdgeInsets.only(right: 10,left: 10),
                      decoration: BoxDecoration(
                          color: splashgragy,
                          borderRadius: BorderRadius.circular(100)
                      ),
                    ),
                    SizedBox(height: screensize.height*0.001,),
                    Container(
                      margin: EdgeInsets.only(right: 10,left: 10),
                      child:  Align(
                        alignment: AlignmentDirectional.center,
                        child:  Text('Educational',
                          style:TextStyle(
                              fontFamily: 'Satoshi-Medium',
                              color: Colors.black,
                              fontWeight:FontWeight.w400,
                              fontSize: 12
                          ),
                        ) ,
                      ),
                    ),
                  ],
                ),
                ///7 form 7
              ],
            ),
          ),
          SizedBox(height: screensize.height*0.1,),
          Align(
            alignment: AlignmentDirectional.topStart,
            child:  Container(
              margin: EdgeInsets.only(left: screensize.width*0.02),
              child: Text('Trending',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight:FontWeight.w400,
                    fontSize: 18
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 150,
            margin: EdgeInsets.only(right: 15,left: 15),
            width: screensize.width*0.90,
            decoration: BoxDecoration(
                color:splashgragy,
                borderRadius: BorderRadius.circular(15),
                border: Border.all( color: Colors.black,
                    width: 1
                )
            ),
            child: Row(children: [
              trendwidget(),
              SizedBox(width: 10,),
              trendwidget(),
              SizedBox(width: 10,),
              trendwidget(),
              SizedBox(width: 10,),
              trendwidget(),
              SizedBox(width: 10,),
              trendwidget(),
              SizedBox(width: 10,),
            ],
            ),
          ),

        ///second trend

          SizedBox(height: screensize.height*0.1,),
          Align(
            alignment: AlignmentDirectional.topStart,
            child:  Container(
              margin: EdgeInsets.only(left: screensize.width*0.02),
              child: Text('Recommended for you',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight:FontWeight.w400,
                    fontSize: 18
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 150,
            margin: EdgeInsets.only(right: 15,left: 15),
            width: screensize.width*0.90,
            decoration: BoxDecoration(
                color:splashgragy,
                borderRadius: BorderRadius.circular(15),
                border: Border.all( color: Colors.black,
                    width: 1
                )
            ),
            child: Row(children: [
              trendwidget(),
              SizedBox(width: 10,),
              trendwidget(),
              SizedBox(width: 10,),
              trendwidget(),
              SizedBox(width: 10,),
              trendwidget(),
              SizedBox(width: 10,),
              trendwidget(),
              SizedBox(width: 10,),
            ],
            ),
          ),
          ///Recommended for you
          SizedBox(height: screensize.height*0.1,),
          Align(
            alignment: AlignmentDirectional.topStart,
            child:  Container(
              margin: EdgeInsets.only(left: screensize.width*0.02),
              child: Text('Recommended for you',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight:FontWeight.w400,
                    fontSize: 18
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 150,
            margin: EdgeInsets.only(right: 15,left: 15),
            width: screensize.width*0.90,
            decoration: BoxDecoration(
                color:splashgragy,
                borderRadius: BorderRadius.circular(15),
                border: Border.all( color: Colors.black,
                    width: 1
                )
            ),
            child: Row(children: [
              trendwidget(),
              SizedBox(width: 10,),
              trendwidget(),
              SizedBox(width: 10,),
              trendwidget(),
              SizedBox(width: 10,),
              trendwidget(),
              SizedBox(width: 10,),
              trendwidget(),
              SizedBox(width: 10,),
            ],
            ),
          ),
          ///Recommended for you
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