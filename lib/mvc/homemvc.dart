
import 'package:ecampus/mvc/ui/menupages/events.dart';

import 'package:flutter/material.dart';
import '../color.dart';
import '../providers/docswidget.dart';
import '../studentpage/mainpage.dart';
import '../studentpage/ui/homepages/profilepage.dart';
import 'commnets.dart';
class homemvc extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _homemvcstate();
  }
}
class _homemvcstate extends State<homemvc>{
  //var crnuser=FirebaseAuth.instance.currentUser;
  int topbarselection=1;
  List datalst2=[];
 List docsvalue2=[];
  bool islikeclicked=false;
  ///false,false,false,false,false,false,false,false
  List<bool>islikeclicked2=[];
  // getdata()async{
  //   islikeclicked2=[];
  //     var myprofiledata2=FirebaseFirestore.instance.collection('post');
  //    await myprofiledata2.get().then((value){
  //       value.docs.forEach((element) {
  //         int numberoflikes=element.data().length;
  //         for(int i=0;i<=numberoflikes;i++){
  //             islikeclicked2.add(false);
  //         }
  //         print('=================================');
  //         print('=================================');
  //         print('object--------${numberoflikes}');
  //         print(element.data());
  //         print(element.data().length);
  //         print('eng-eng-554645643---${islikeclicked2}---43141');
  //         print('eng-eng-5546456435---${islikeclicked2.length}---143141');
  //         print('=================================');
  //         print('=================================');
  //         setState(() {
  //           docsvalue2.add(element.reference.id);
  //           datalst2.add(element.data());

  //         });

  //       });
  //     });
  // }
  // getuserdata()async{
  //   var myprofiledata=FirebaseFirestore.instance.collection('user');
  //   await  myprofiledata.where('username',isEqualTo: '${crnuser!.email.toString()}');
  //   var response=await myprofiledata.get().then((value){
  //     value.docs.forEach((element) {
  //       print('=================================');
  //       print('=================================');
  //       print(element.data());
  //       print('=================================');
  //       print('=================================');

  //       setState(() {
  //         docsvalue=element.id;
  //         datalst.add(element.data());
  //       });
  //     });
  //   });
  // }
  @override
  void initState() {

    // getuserdata();
    // getdata();
    widgetfordocs();
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
  }
  var docs=widgetfordocs().doc;

  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 15,),
          Row(
            children: [
              InkWell(
                onTap: (){
                 // getdata();
                },
                child: Container(
                  margin: EdgeInsets.only(left: screensize.width*0.1),
                  child:  Align(
                    alignment: AlignmentDirectional.topStart,
                    child:  Text('Campus',
                      style: TextStyle(
                          fontFamily: 'Satoshi-Variable',
                          color: Colors.black,
                          fontWeight:FontWeight.w700,
                          fontSize: 32
                      ),
                    ) ,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: screensize.width*0.31),
                child: Image.asset('images/mvc/blue.png'),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>
                      Profilepage(),));
                },
                child: Container(
                  margin: EdgeInsets.only(left: screensize.width*0.049),
                  height: 31,
                  width: 31,
                  decoration: BoxDecoration(
                    color: splashcolor,
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(100))
                  ),
                  child:  Align(
                    alignment: AlignmentDirectional.center,
                    child:  Text('First name',
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
            ],
          ),
          SizedBox(height: screensize.height*0.03,),
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
                  (context) => mainpage(),));
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
                  child:  Text('Feed',
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
                          (context) => event(),));
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
                      child:  Text('Events',
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
          SizedBox(height: screensize.height*0.03,),
    ListView.builder(
    itemCount: datalst2.length,
    shrinkWrap: true,
    //scrollDirection: Axis.vertical,
    physics: NeverScrollableScrollPhysics(),
    itemBuilder: (context,index){
    print('----------------------------------------');
    print('----------------------------------------');
    print('---------------${index}---------------');
    print('----------------------------------------');
    print('----------------------------------------');
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: screensize.width*0.049),
              height: 31,
              width: 31,
              decoration: BoxDecoration(
                  color: splashcolor,
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(100))
              ),
              child:  Align(
                alignment: AlignmentDirectional.center,
                child:  Text('First name ',
                  style: TextStyle(
                      fontFamily: 'Satoshi-Variable',
                      color: Colors.white,
                      fontWeight:FontWeight.w700,
                      fontSize: 13
                  ),
                ) ,
              ),
            ),
            SizedBox(width: 15,),
            Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child:  Text('${datalst2[index]['postname']}',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Variable',
                        color: Colors.black,
                        fontWeight:FontWeight.w700,
                        fontSize: 13
                    ),
                  ) ,
                ),
                Align(
                  alignment: AlignmentDirectional.center,
                  child:  Text('${datalst2[index]['Collegename']}',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Variable',
                        color: splashgragy,
                        fontWeight:FontWeight.w700,
                        fontSize: 10
                    ),
                  ) ,
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 15,),
        Container(
          width:screensize.width,
          margin: EdgeInsets.only(left: 10,right: 10),
          decoration: BoxDecoration(
            border: Border.all(width: 0.01),
          ),
          child: Column(
            children: [
              Image.network('${datalst2[index]['postmainphoto']}'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                        child:Image.asset('images/mvc/exe1.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 13),
                        child:Image.asset('images/mvc/exe2.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 23),
                        child:Image.asset('images/mvc/exe3.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 33),
                        height: 17,
                        width: 17,
                        decoration: BoxDecoration(
                            color: facebookcolor,
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(100))
                        ),
                        child:  Align(
                          alignment: AlignmentDirectional.center,
                          child:  Text('+${++index}',
                            style:TextStyle(
                                fontFamily: 'Satoshi-Medium',
                                color: Colors.white,
                                fontWeight:FontWeight.w400,
                                fontSize: 8
                            ),
                          ) ,
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional.center,
                    child:  Text('  Comments',
                      style:TextStyle(
                          fontFamily: 'Satoshi-Medium',
                          color: splashgragy,
                          fontWeight:FontWeight.w700,
                          fontSize: 13
                      ),
                    ) ,
                  ),
                ],
              ),
              SizedBox(height: 15,),
              //divider.png
              Container(
                //margin: EdgeInsets.only(left: 0),
                child:Image.asset('images/mvc/divider.png'),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(children: [
                    InkWell(
                      onTap:(){
                        setState(() {
                          islikeclicked2[index]=!islikeclicked2[index];
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 25,right: 5),
                        ///islikeclicked     //likebuttonactive.png
                        child:islikeclicked2[index]==false?
                        Image.asset('images/mvc/like.png'):
                       Container(
                         margin:EdgeInsets.only(bottom: 2),
                         child: Image.asset('images/mvc/sitting/likebuttonactive.png',
                         height: 20,
                         width: 20,
                         ),
                       )
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.center,
                      child:  InkWell(
                        onTap:(){
                          setState(() {
                            islikeclicked2[index]=!islikeclicked2[index];
                            
                          });
                        },
                        child: Text('Like',
                          style: TextStyle(
                              fontFamily: 'Satoshi-Variable',
                              color: facebooklikecolor,
                              fontWeight:FontWeight.w500,
                              fontSize: 13
                          ),
                        ),
                      ) ,
                    ),
                  ],
                  ),
                  Row(children: [
                      InkWell(
                        onTap:()async{
                          try{
                            ///commnets
                            ///docsvalue2
                         //  getdata();
                            print('-------------------------');
                            print('-------------------------');
                            print('--------${docsvalue2.length}----------');
                            print('--------${index}----------');
                            print('--------${docsvalue2[index]}----------');
                            print('-------------------------');
                            print('-------------------------');
                            Navigator.push(context,
                            MaterialPageRoute(builder:
                        (context) =>commnets(docsvalue:
                        '${docsvalue2[index]}') ,));
                          }
                          catch(e){
                            print('-------------------------');
                            print('-------------------------');
                            print('--------${e}----------');
                            print('--------${docsvalue2[index]}----------');
                            print('-------------------------');
                            print('-------------------------');
                          }
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 25,right: 5),
                          child:Image.asset('images/mvc/comment.png'),
                        ),
                      ),
                      InkWell(
                        onTap:(){
                          try{
                            ///commnets
                            ///docsvalue2
                           // getdata();
                            print('-------------------------');
                            print('-------------------------');
                            print('--------${docsvalue2.length}----------');
                            print('--------${index}----------');
                            print('--------${docsvalue2[index]}----------');
                            print('-------------------------');
                            print('-------------------------');
                                Navigator.push(context,
                                MaterialPageRoute(builder:
                            (context) =>commnets(docsvalue:
                            '${docsvalue2[index]}') ,));
                          }
                  catch(e){
                print('-------------------------');
                print('-------------------------');
                print('--------${e}----------');
                print('--------${docsvalue2[index]}----------');
                print('-------------------------');
                print('-------------------------');
                  }
                },
                        child: Align(
                          alignment: AlignmentDirectional.center,
                          child:  Text('Comments',
                            style: TextStyle(
                                fontFamily: 'Satoshi-Variable',
                                color: facebooklikecolor,
                                fontWeight:FontWeight.w500,
                                fontSize: 13
                            ),
                          ) ,
                        ),
                      ),
                    ],
                    ),
                  Row(children: [
                    Container(
                      margin: EdgeInsets.only(left: 25,right: 5),
                      child:Image.asset('images/mvc/savepost.png'),
                    ),
                    Align(
                      alignment: AlignmentDirectional.center,
                      child:  Text('Save',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Variable',
                            color: facebooklikecolor,
                            fontWeight:FontWeight.w500,
                            fontSize: 13
                        ),
                      ) ,
                    ),
                  ],
                  )
                ],
              ),
              SizedBox(height: 15,),
              //divider.png
              Container(
                //margin: EdgeInsets.only(left: 0),
                child:Image.asset('images/mvc/divider.png'),
              ),
            ],
          ),
        ),
        SizedBox(height: 15,),
      ],
    );
    }
    ),
        ],
      ),
    );
  }
}
