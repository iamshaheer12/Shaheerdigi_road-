import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../color.dart';
import '../../../newcamicon_icons.dart';
import '../../mainpage.dart';
import '../../navcontroller.dart';
import '../homepages/profilepage.dart';
import '../widget/sellwidget.dart';
import 'Discounts.dart';
class sellespage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _sellespagestate();
  }
}
class _sellespagestate extends State<sellespage>{
  //var crnuser=FirebaseAuth.instance.currentUser;
  var select=4;
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    bool istabed=false;
    var _sitting=0;
    final NavbarController _navbarController = Get.put(NavbarController());
    return Scaffold(
      backgroundColor: menubackgroungcolors,
      body:istabed==true?_navbarController.widgets[_sitting]:ListView(
        children: [
          SizedBox(height: screensize.height*0.006,),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: screensize.width*0.04),
                  child:  Align(
                    alignment: AlignmentDirectional.topStart,
                    child:  Text('Sell',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color:facebooklikecolor,
                          fontWeight:FontWeight.w700,
                          fontSize: 28
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Container(
                    margin: EdgeInsets.only(top: 10,right: 10),
                    child: Image.asset('images/mvc/Categories.png',
                    ),
                  ),
                ),
              ],
            ),
          SizedBox(height: 6,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: sellwidget(pageroute: mainpage(),
              color: Colors.white,btnhight: 22,btnwidth: 66,
                  color2:Colors.white,fontwiew: FontWeight.w400,
                  marginbottom: 0,marginleft: 5,marginright: 0,
                    margintop: 3,txt: 'Inbox',),
                ),
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: sellwidget(pageroute: mainpage(),
                    color: Colors.white,btnhight: 22,btnwidth: 82,
                    color2:Colors.white,fontwiew: FontWeight.w400,
                    marginbottom: 0,marginleft: 15,marginright: 15,
                    margintop: 3,txt: 'Your listing',),
                ),
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: sellwidget(pageroute: mainpage(),
                    color:Colors.white,btnhight: 22,btnwidth: 92,
                    color2:Colors.white,fontwiew: FontWeight.w400,
                    marginbottom: 0,marginleft: 15,marginright: 15,
                    margintop: 3,txt: 'Announcements',),
                ),
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: sellwidget(pageroute: mainpage(),
                    color:Colors.white,btnhight: 22,btnwidth: 72,
                    color2:Colors.white,fontwiew: FontWeight.w400,
                    marginbottom: 0,marginleft: 2,marginright: 15,
                    margintop: 3,txt: 'Notifications',),
                ),
              ],
            ),
          ),
          SizedBox(height: screensize.height*0.03,),
          Row(
            children: [
              Align(
                alignment: AlignmentDirectional.topStart,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>
                        Profilepage(),));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: screensize.width*0.0049),
                    height: 31,
                    width: 31,
                    decoration: BoxDecoration(
                        color: splashcolor,
                        borderRadius: BorderRadius.all(Radius.circular(100))
                    ),
                    child:  Align(
                      alignment: AlignmentDirectional.center,
                      child:  Text('first name ',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Variable',
                            color: Colors.white,
                            fontWeight:FontWeight.w700,
                            fontSize: 13
                        ),
                      ) ,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>
                      Discounts(),));
                },
                child: Card(
                  margin: EdgeInsets.only(left: screensize.width*0.002),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)
                  ),
                  child: Container(
                    height: 30,
                    width: 257,
                   
                    decoration: BoxDecoration(
                      color:splashcolor,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional.center,
                            child: Container(
                            //  margin: EdgeInsets.only(left: screensize.width*0.002),
                        child: Image.asset('images/mvc/cat/Create a listing.png',
                      ),
                      ),
                      ),
    Align(
    alignment: AlignmentDirectional.center,
    child:  Container(
    margin: EdgeInsets.only(left: screensize.width*0.06),
    child: Text('Create a listing',
    style:TextStyle(
    fontFamily: 'Satoshi-Medium',
    color: Colors.white,
    fontWeight:FontWeight.w500,
    fontSize: 13
    ),
    ),
    ),
    ),
    ],
    ),
    ),
    ),
                ),
              )
            ],
          ),
          SizedBox(height: screensize.height*0.02,),
          Align(
            alignment: AlignmentDirectional.topStart,
            child:  Container(
              margin: EdgeInsets.only(left: screensize.width*0.02),
              child: Text('Overview',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: facebooklikecolor,
                    fontWeight:FontWeight.w700,
                    fontSize: 20
                ),
              ),
            ),
          ),
          SizedBox(height: screensize.height*0.01,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Card(
                 elevation: 2,
                 margin: EdgeInsets.only(right:10,
                     ),
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(15)
                 ),
                 child: Container(
                   height: 74,
                   width: 174,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       color: Colors.white,
                       border: Border.all( color: Colors.black,
                           width: 1
                       )
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                    Container(
                           margin: EdgeInsets.only(left:screensize.width*0.02),
                           child: Column(
                             children: [
                               Container(
                                 margin: EdgeInsets.only(left:screensize.width*0.001,top: 7),
                                 child: Align(
                                   alignment: Alignment.topLeft
                                   ,child: Text('0',
                                   style: TextStyle(
                                       fontFamily: 'Satoshi-Medium',
                                       color:facebooklikecolor,
                                       fontWeight:FontWeight.w700,
                                       fontSize: 28
                                   ),
                                 ),
                                 ),
                               ),
                               Container(
                                 margin: EdgeInsets.only(left:screensize.width*0.02),
                                 child: Align(
                                   alignment: Alignment.topLeft,
                                   child: Text('Chats to answer',
                                       style:TextStyle(
                                           fontFamily: 'Satoshi-Medium',
                                           color:facebooklikecolor,
                                           fontWeight:FontWeight.w500,
                                           fontSize: 13
                                       )
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ),
                       Align(
                         alignment: AlignmentDirectional.topEnd,
                         child: Container(
                           margin: EdgeInsets.only(right: screensize.width*0.03,
                              top: 5),
                           child: Image.asset('images/mvc/cat/chat-notification.png',
                           ),
                         ),
                       ),

                     ],
                   ),
                 ),
               ),
               ///this second page
               Card(
                 elevation: 2,
                 margin: EdgeInsets.only(
                     right: 10),
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15)
                 ),
                 child: Container(
                   height: 74,
                   width: 174,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       color: Colors.white,
                       border: Border.all( color: Colors.black,
                           width: 1
                       )
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(
                         margin: EdgeInsets.only(left:screensize.width*0.02),
                         child: Column(
                           children: [
                             Container(
                               margin: EdgeInsets.only(left:screensize.width*0.001,top: 7),
                               child: Align(
                                 alignment: Alignment.topLeft
                                 ,child: Text('0',
                                 style: TextStyle(
                                     fontFamily: 'Satoshi-Medium',
                                     color:facebooklikecolor,
                                     fontWeight:FontWeight.w700,
                                     fontSize: 28
                                 ),
                               ),
                               ),
                             ),
                             Container(
                               margin: EdgeInsets.only(left:screensize.width*0.02),
                               child: Align(
                                 alignment: Alignment.topLeft,
                                 child: Text('Active listings',
                                     style:TextStyle(
                                         fontFamily: 'Satoshi-Medium',
                                         color:facebooklikecolor,
                                         fontWeight:FontWeight.w500,
                                         fontSize: 13
                                     )
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                       Align(
                         alignment: AlignmentDirectional.topEnd,
                         child: Container(
                           margin: EdgeInsets.only(right: screensize.width*0.03,
                               top: 5),
                           child: Image.asset('images/mvc/cat/Active listings.png',
                           ),
                         ),
                       ),

                     ],
                   ),
                 ),
               ),
               ///second page
             ],
           ),
          /// performance
          SizedBox(height: screensize.height*0.02,),
          Align(
            alignment: AlignmentDirectional.topStart,
            child:  Container(
              margin: EdgeInsets.only(left: screensize.width*0.02),
              child: Text('Performance',
                style:TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight:FontWeight.w400,
                    fontSize: 24
                ),
              ),
            ),
          ),
          SizedBox(height: screensize.height*0.01,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 2,
                margin: EdgeInsets.only(right:10,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Container(
                  height: 74,
                  width: 174,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all( color: Colors.black,
                          width: 1
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left:screensize.width*0.02),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left:screensize.width*0.001,top: 7),
                              child: Align(
                                alignment: Alignment.topLeft
                                ,child: Text('\$0.00',
                                style: TextStyle(
                                    fontFamily: 'Satoshi-Medium',
                                    color:facebooklikecolor,
                                    fontWeight:FontWeight.w700,
                                    fontSize: 28
                                ),
                              ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left:screensize.width*0.02),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text('No payout history',
                                    style:TextStyle(
                                        fontFamily: 'Satoshi-Medium',
                                        color:facebooklikecolor,
                                        fontWeight:FontWeight.w500,
                                        fontSize: 13
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ///this second page
              Card(
                elevation: 2,
                margin: EdgeInsets.only(
                    right: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Container(
                  height: 74,
                  width: 174,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all( color: Colors.black,
                          width: 1
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left:screensize.width*0.02),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left:screensize.width*0.001,top: 7),
                              child: Align(
                                alignment: Alignment.topLeft
                                ,child: Text('0',
                                style: TextStyle(
                                    fontFamily: 'Satoshi-Medium',
                                    color:facebooklikecolor,
                                    fontWeight:FontWeight.w700,
                                    fontSize: 28
                                ),
                              ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left:screensize.width*0.02),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text('Clicks on listings',
                                    style:TextStyle(
                                        fontFamily: 'Satoshi-Medium',
                                        color:facebooklikecolor,
                                        fontWeight:FontWeight.w500,
                                        fontSize: 13
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ///second page
            ],
          ),
          ///final btn
         SizedBox(height: screensize.height*0.03,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 2,
                margin: EdgeInsets.only(right:10,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Container(
                  height: 74,
                  width: 174,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all( color: Colors.black,
                          width: 1
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left:screensize.width*0.02),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left:screensize.width*0.001,top: 7),
                              child: Align(
                                alignment: Alignment.topLeft
                                ,child: Text('0',
                                style: TextStyle(
                                    fontFamily: 'Satoshi-Medium',
                                    color:facebooklikecolor,
                                    fontWeight:FontWeight.w700,
                                    fontSize: 28
                                ),
                              ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left:screensize.width*0.02),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text('Seller rating',
                                    style:TextStyle(
                                        fontFamily: 'Satoshi-Medium',
                                        color:facebooklikecolor,
                                        fontWeight:FontWeight.w500,
                                        fontSize: 13
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Container(
                          margin: EdgeInsets.only(right: screensize.width*0.03,
                              top: 5),
                          child: Image.asset('images/mvc/cat/chat-notification.png',
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              ///this second page
              Container(
                  margin: EdgeInsets.only(
                      right: 10),
                  height: 74,
                  width: 174,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(''),
              ),
              ///second page
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: splashcolor,
        unselectedItemColor: Colors.grey.shade500,
        currentIndex: select,
        elevation: 14,
        onTap: bas,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(label:'home',icon:select==0?
          Image.asset('images/mvc/selectedhome.png'):
          Image.asset('images/mvc/unselectedhome.png')
          ),
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
    );
  }
  void bas(index){
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => mainpage(),));
  }
}
// bottomNavigationBar: Container(
// decoration: BoxDecoration(
// border: Border.symmetric(horizontal: BorderSide(width: 1,color: Colors.black))
// ),
// child: Padding(
// padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
// child: GNav(
// color: Colors.white,
// activeColor: Colors.grey.shade400,
// padding: EdgeInsets.all(10),
// hoverColor: Colors.grey.shade500,
// style: GnavStyle.google,
// gap: 8,
// onTabChange: (index){
// setState(() {
// istabed=true;
// _sitting=index;
// print("sitting =$istabed");
// });
// },
// tabs: [
// GButton(
// text: 'Home',
// icon: FontAwesomeIcons.house,iconColor: Colors.black,
// onPressed:(){
//
// },),
// GButton(
// text: 'Deals',
// icon: FontAwesomeIcons.tag,iconColor: Colors.black,
// ),
// GButton(
// text: 'Inbox',
// icon: FontAwesomeIcons.paperPlane,iconColor: Colors.black),
// GButton(
// text: 'Notifications',
// icon: FontAwesomeIcons.bell,iconColor: Colors.black),
// GButton(
// text: 'Menu',
// semanticLabel: Navigator.defaultRouteName,
// icon: FontAwesomeIcons.bars,iconColor: Colors.black),
// ],
//
// ),
// ),
// ),