import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:ecampus/mvc/ui/menupages/recomanded.dart';
import 'package:flutter/material.dart';
import '../../../color.dart';
import '../../../studentpage/ui/secrowpages/catagories.dart';
import '../../widgets/discountcatwidget.dart';
import '../../widgets/discountproductwidget.dart';
import '../newdir/seeallpage.dart';
class discuontpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _discuontpagestate();
  }
}
class _discuontpagestate extends State<discuontpage>{
  int topbarselection=1;
  List firsttxt=['NIKE','PUMA'];
  List secondtxt=['Online','Online'];
  List mainimage=['NIKE.png','PUMA.png'];
  List logoimage=['nlogo.png','pumalogopng.png'];
  List logocolor=[nikelogocolors,brandlogocolors];
  ///next
  List firsttxt1=['FILA','ADIDAS'];
  List secondtxt1=['Online','Online'];
  List mainimage1=['FILA.png','ADIDAS.png'];
  List logoimage1=['toppng 1.png','adidaslogo.png'];
  List logocolor1=[fibalogocolors,adidaslogocolors];
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: screensize.width*0.04),
                child:  Align(
                  alignment: AlignmentDirectional.topStart,
                  child:  Text('Discounts',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Variable',
                        color: Colors.black,
                        fontWeight:FontWeight.w700,
                        fontSize: 32
                    ),
                  ) ,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Image.asset('images/mvc/bluesearch.png'),
              ),
            ],
          ),
          SizedBox(height: screensize.height*0.06,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
               InkWell(
                 onTap: (){
                   AwesomeDialog(
                     context: context,
                     dialogType: DialogType.info,
                     borderSide: const BorderSide(
                       color: Colors.green,
                       width: 2,
                     ),
                     width: 280,
                     buttonsBorderRadius: const BorderRadius.all(
                       Radius.circular(2),
                     ),
                     dismissOnTouchOutside: true,
                     dismissOnBackKeyPress: false,
                     onDismissCallback: (type) {
                       ScaffoldMessenger.of(context).showSnackBar(
                         SnackBar(
                           content: Text(''),
                         ),
                       );
                     },
                     headerAnimationLoop: false,
                     animType: AnimType.bottomSlide,
                     title: 'Not Available',
                     desc: 'Feature Coming Soon',
                     showCloseIcon: true,
                     btnCancelOnPress: () {},
                     btnOkOnPress: () {},
                   ).show();
                   ///will see you again
                   // Navigator.push(context,
                   // MaterialPageRoute(builder: (context) =>
                   //     discountcatwidgetpage(img: 'Shopping.png',
                   //     txt: 'Shopping'),));
                   ///will see you again
                 },
                 child: Container(
                   margin: EdgeInsets.only(right: 20,left: 20),
                  child:
                 discountcatwidget(txt: 'Shopping',
              img: 'Shopping.png',)),
               ),
                InkWell(
                  onTap: (){
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.info,
                      borderSide: const BorderSide(
                        color: Colors.green,
                        width: 2,
                      ),
                      width: 280,
                      buttonsBorderRadius: const BorderRadius.all(
                        Radius.circular(2),
                      ),
                      dismissOnTouchOutside: true,
                      dismissOnBackKeyPress: false,
                      onDismissCallback: (type) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(''),
                          ),
                        );
                      },
                      headerAnimationLoop: false,
                      animType: AnimType.bottomSlide,
                      title: 'Not Available',
                      desc: 'Feature Coming Soon',
                      showCloseIcon: true,
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    ).show();
                    ///will see you again
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) =>
                    //         discountcatwidgetpage(img: 'Food.png',
                    //             txt: 'Food'),));
                  },
                  child: Container(
                      margin: EdgeInsets.only(right: 20,left: 20),
                      child:
                      discountcatwidget(txt: 'Food',
                        img: 'Food.png',)),
                ),
                InkWell(
                  onTap: (){
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.info,
                      borderSide: const BorderSide(
                        color: Colors.green,
                        width: 2,
                      ),
                      width: 280,
                      buttonsBorderRadius: const BorderRadius.all(
                        Radius.circular(2),
                      ),
                      dismissOnTouchOutside: true,
                      dismissOnBackKeyPress: false,
                      onDismissCallback: (type) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(''),
                          ),
                        );
                      },
                      headerAnimationLoop: false,
                      animType: AnimType.bottomSlide,
                      title: 'Not Available',
                      desc: 'Feature Coming Soon',
                      showCloseIcon: true,
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    ).show();
                    ///will see you again
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) =>
                    //         discountcatwidgetpage(img: 'Fahsion.png',
                    //             txt: 'Fahsion'),));
                  },
                  child: Container(
                      margin: EdgeInsets.only(right: 20,left: 20),
                      child:
                      discountcatwidget(txt: 'Fahsion',
                        img: 'Fahsion.png',)),
                ),
                InkWell(
                  onTap: (){
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.info,
                      borderSide: const BorderSide(
                        color: Colors.green,
                        width: 2,
                      ),
                      width: 280,
                      buttonsBorderRadius: const BorderRadius.all(
                        Radius.circular(2),
                      ),
                      dismissOnTouchOutside: true,
                      dismissOnBackKeyPress: false,
                      onDismissCallback: (type) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(''),
                          ),
                        );
                      },
                      headerAnimationLoop: false,
                      animType: AnimType.bottomSlide,
                      title: 'Not Available',
                      desc: 'Feature Coming Soon',
                      showCloseIcon: true,
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    ).show();
                    ///will see you again
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) =>
                    //         discountcatwidgetpage(img: 'Travel.png',
                    //             txt: 'Travel'),));

                  },
                  child: Container(
                      margin: EdgeInsets.only(right: 20,left: 20),
                      child:
                      discountcatwidget(txt: 'Travel',
                        img: 'Travel.png',)),
                ),

              ],
            ),
          ),
          SizedBox(height: screensize.height*0.06,),
          Container(
            width: screensize.width,
            height: 50,
            margin: EdgeInsets.only(right: 15,left: 15),
            decoration: BoxDecoration(
              // border: Border.all(width: 1),
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: otbcolor
            ),
            child:Row(
              children: [
                InkWell(
                  onTap:(){
                    setState(() {
                      topbarselection=1;
                    });

                    Navigator.push(context, MaterialPageRoute(builder:
                        (context) => discuontpage(),));
                  }
                  ,child: Container(
                  width: screensize.width*0.45,
                  height: 50,
                  margin: EdgeInsets.only(right: 2,left: 0),
                  decoration: BoxDecoration(

                      border: topbarselection==1?Border.all(width: 1):Border.all(width: 0
                          ,color: otbcolor),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: topbarselection==1?Colors.white:
                      otbcolor),
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child:  Text('Trending',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Variable',
                          color: Colors.black,
                          fontWeight:FontWeight.w700,
                          fontSize: 13
                      ),
                    ) ,
                  ),
                ),
                ),
                InkWell(
                  onTap: (){

                    setState(() {
                      topbarselection=2;
                      Navigator.push(context, MaterialPageRoute(builder:
                          (context) => recomanded(),));
                      topbarselection=2;
                    });

                  },
                  child: Container(
                    width: screensize.width*0.45,
                    height: 50,
                    margin: EdgeInsets.only(right: 0,left: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: topbarselection==2?Colors.white:
                      otbcolor,
                      border: topbarselection==2?Border.all(width: 1):Border.all(width: 0
                          ,color: otbcolor),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional.center,
                      child:  Text('Recommended',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Variable',
                            color: Colors.black,
                            fontWeight:FontWeight.w700,
                            fontSize: 13
                        ),
                      ) ,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: screensize.height*0.02,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child:
                Align(
                  alignment: AlignmentDirectional.center,
                  child:  Text('Latest offers',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Variable',
                        color: Latestofferscolors,
                        fontWeight:FontWeight.w700,
                        fontSize: 13
                    ),
                  ) ,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child:
                Align(
                  alignment: AlignmentDirectional.center,
                  child:  InkWell(
                    onTap: (){

                      Navigator.push(context,///seeallpage()seeallpage()seeallpage()
                      MaterialPageRoute(builder: (context) => catagories(),));
                    },
                    child: Text('See all',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Variable',
                          color: splashcolor,
                          fontWeight:FontWeight.w700,
                          fontSize: 13
                      ),
                    ),
                  ) ,
                ),
              ),
            ],
          ),
          SizedBox(height: screensize.height*0.02,),
          Container(
            margin: EdgeInsets.only(right: 20,left: 20),
            width: screensize.width,
            child: Column(
              children: [
                SizedBox(
                  height: 200.0,
                  child: Center(
                    child: ListView.builder(
                        itemCount: 2,
                        shrinkWrap: true,
                        scrollDirection:Axis.horizontal,
                        physics:ClampingScrollPhysics(),

                        itemBuilder: (context,index){
                          return      Center(
                            child:
                            InkWell(
                              onTap: (){
                                AwesomeDialog(
                                  context: context,
                                  dialogType: DialogType.info,
                                  borderSide: const BorderSide(
                                    color: Colors.green,
                                    width: 2,
                                  ),
                                  width: 280,
                                  buttonsBorderRadius: const BorderRadius.all(
                                    Radius.circular(2),
                                  ),
                                  dismissOnTouchOutside: true,
                                  dismissOnBackKeyPress: false,
                                  onDismissCallback: (type) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(''),
                                      ),
                                    );
                                  },
                                  headerAnimationLoop: false,
                                  animType: AnimType.bottomSlide,
                                  title: 'Not Available',
                                  desc: 'Feature Coming Soon',
                                  showCloseIcon: true,
                                  btnCancelOnPress: () {},
                                  btnOkOnPress: () {},
                                ).show();
                                ///will see you again
                                // Navigator.push(context,
                                // MaterialPageRoute(builder:
                                // (context) =>
                                // discountproduct(
                                //   firsttxt:firsttxt[index],
                                //   secondtxt:secondtxt[index],
                                //   mainimage: mainimage[index],
                                //   logoimage:logoimage[index] ,
                                //   logocolor:logocolor[index] ,
                                // ),));
                              },
                              child: discountproductwidget(firsttxt: '${firsttxt[index]}',
                                  secondtxt: '${secondtxt[index]}',
                                  mainimage: '${mainimage[index]}',
                                  logoimage: '${logoimage[index]}',
                                  logocolor: logocolor[index]),
                            ),
                          );          }),
                  ),
                ),
                ///second widget
                SizedBox(height: screensize.height*0.06,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child:
                      Align(
                        alignment: AlignmentDirectional.center,
                        child:  Text('Recommended for you',
                          style: TextStyle(
                              fontFamily: 'Satoshi-Variable',
                              color: Latestofferscolors,
                              fontWeight:FontWeight.w700,
                              fontSize: 13
                          ),
                        ) ,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child:
                      Align(
                        alignment: AlignmentDirectional.center,
                        child:  InkWell(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => seeallpage(),));
                          },
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => seeallpage(),));
                            },
                            child: Text('See all',
                              style: TextStyle(
                                  fontFamily: 'Satoshi-Variable',
                                  color: splashcolor,
                                  fontWeight:FontWeight.w700,
                                  fontSize: 13
                              ),
                            ),
                          ),
                        ) ,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screensize.height*0.03,),
                ///second brands
                SizedBox(
                  height: 200.0,
                  child: Center(
                    child: ListView.builder(
                        itemCount: 2,
                        shrinkWrap: true,
                        scrollDirection:Axis.horizontal,
                        physics:ClampingScrollPhysics(),

                        itemBuilder: (context,index){
                          return      Center(
                            child:
                            InkWell(
                              onTap: (){
                                AwesomeDialog(
                                  context: context,
                                  dialogType: DialogType.info,
                                  borderSide: const BorderSide(
                                    color: Colors.green,
                                    width: 2,
                                  ),
                                  width: 280,
                                  buttonsBorderRadius: const BorderRadius.all(
                                    Radius.circular(2),
                                  ),
                                  dismissOnTouchOutside: true,
                                  dismissOnBackKeyPress: false,
                                  onDismissCallback: (type) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(''),
                                      ),
                                    );
                                  },
                                  headerAnimationLoop: false,
                                  animType: AnimType.bottomSlide,
                                  title: 'Not Available',
                                  desc: 'Feature Coming Soon',
                                  showCloseIcon: true,
                                  btnCancelOnPress: () {},
                                  btnOkOnPress: () {},
                                ).show();
                                ///will see you again
                                // Navigator.push(context,
                                //     MaterialPageRoute(builder:
                                //         (context) =>
                                //         discountproduct(
                                //           firsttxt:firsttxt1[index],
                                //           secondtxt:secondtxt1[index],
                                //           mainimage: mainimage1[index],
                                //           logoimage:logoimage1[index] ,
                                //           logocolor:logocolor1[index] ,
                                //         ),));
                              },
                              child: discountproductwidget(firsttxt: '${firsttxt1[index]}',
                                  secondtxt: '${secondtxt1[index]}',
                                  mainimage: '${mainimage1[index]}',
                                  logoimage: '${logoimage1[index]}',
                                  logocolor: logocolor1[index]),
                            ),
                          );          }),
                  ),
                ),
              ],
            ),
          )
        ],
      ),

    );
  }

}