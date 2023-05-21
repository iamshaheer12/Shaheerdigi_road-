import 'package:ecampus/studentpage/ui/secrowpages/sellespage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../color.dart';
import '../../../newcamicon_icons.dart';
import '../../mainpage.dart';
import 'catagories.dart';

class marketplace extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _marketplacestate();
  }
}
class _marketplacestate extends State<marketplace>{
  var select=4;
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: menubackgroungcolors,
      body: ListView(
        children: [
          SizedBox(height: screensize.height*0.006,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: screensize.width*0.06),
                child:  Align(
                  alignment: AlignmentDirectional.topStart,
                  child:  Text('Marketplace',
                    style:TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: facebooklikecolor,
                        fontWeight:FontWeight.w700,
                        fontSize: 28
                    ),
                  ),
                ),
              ),
              Container(
                 margin: EdgeInsets.only(right: screensize.width*0.06),
                child: Image.asset('images/mvc/blue.png',
                ),
              ),
            ],
          ),
          SizedBox(height: screensize.height*0.006,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                margin: EdgeInsets.only(left: screensize.width*0.01),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Container(
                  height: 36,
                  width: 168,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //smallmed.png
                        Container(
                          margin: EdgeInsets.only(left: screensize.width*0.003),
                          child: Image.asset('images/mvc/Selling.png',
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => sellespage(),));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: screensize.width*0.01,
                                ),
                            child:  Text('Sell',
                              style:TextStyle(
                                  fontFamily: 'Satoshi-Medium',
                                  color: Colors.black,
                                  fontWeight:FontWeight.w700,
                                  fontSize: 13
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                 MaterialPageRoute(builder:
                    (context) => catagories(),));
                },
                child: Card(
                  margin: EdgeInsets.only(left: screensize.width*0.01),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Container(
                    height: 36,
                    width: 168,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: screensize.width*0.003),
                            child: Image.asset('images/mvc/Categories.png',
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: screensize.width*0.01,
                            ),
                            child:  Text('Categories',
                              style:TextStyle(
                                  fontFamily: 'Satoshi-Medium',
                                  color: Colors.black,
                                  fontWeight:FontWeight.w700,
                                  fontSize: 13
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: screensize.height*0.05,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child:Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      elevation: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Image.asset('images/mvc/cat/cat1.png'),
                      ),
                    ),
                decoration: BoxDecoration(
                    color: Colors.white
                ),
              ),
              ///first grid
              Container(
                child:Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  elevation: 2,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Image.asset('images/mvc/cat/cat2.png'),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white
                ),
              ),
            ],
          ),
          ///end first main column
          SizedBox(height: screensize.height*0.01,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child:Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  elevation: 2,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Image.asset('images/mvc/cat/cat4.png'),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white
                ),
              ),
              ///first grid
              Container(
                child:Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  elevation: 2,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Image.asset('images/mvc/cat/cat3.png'),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white
                ),
              ),
            ],
          ),
          ///end second main column
          SizedBox(height: screensize.height*0.01,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child:Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  elevation: 2,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Image.asset('images/mvc/cat/cat5.png'),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white
                ),
              ),
              ///first grid
              Container(
                child:Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  elevation: 2,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Image.asset('images/mvc/cat/cat6.png'),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white
                ),
              ),
            ],
          ),
          ///4th row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child:Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  elevation: 2,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Image.asset('images/mvc/cat/cat7.png'),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white
                ),
              ),
              ///first grid
              Container(
                child:Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  elevation: 2,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Image.asset('images/mvc/cat/cat8.png'),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white
                ),
              ),
            ],
          ),
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






// Container(
//   margin: EdgeInsets.only(right: screensize.width*0.01,
//       left:screensize.width*0.01 ),
//   height: 25,
//   width: 114,
//   child: Center(
//     child: Row(
//       children: [
//         //smallmed.png
//         Container(
//           margin: EdgeInsets.only(left: screensize.width*0.03,
//           ),
//           child:  Text('Dashboard',
//             style: TextStyle(
//                 fontFamily: 'Satoshi-Medium',
//                 color: Colors.black,
//                 fontWeight:FontWeight.w400,
//                 fontSize: 12
//             ),
//           ),
//         ),
//       ],
//     ),
//   ),
//   decoration: BoxDecoration(
//       color: splashgragy,
//       borderRadius: BorderRadius.circular(25)
//   ),
// ),