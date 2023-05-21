import 'package:flutter/material.dart';

import '../../color.dart';
class eventviewpage extends StatefulWidget{
  var eventtitle='';
  eventviewpage({required this.eventtitle});
  @override
  State<StatefulWidget> createState() {
   return _eventviewpagestate(eventtitle: this.eventtitle);
  }
}
class _eventviewpagestate extends State<eventviewpage>{
  var eventtitle='';
  _eventviewpagestate({required this.eventtitle});
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:backgroundadminaboutcolors,
      body: ListView(
        children: [
         Container(
           width: screensize.width,
           height: 213,
           decoration: BoxDecoration(
           borderRadius: BorderRadius.only(topRight: Radius.circular(1),
           topLeft:  Radius.circular(1),),
           image: DecorationImage(
           image: AssetImage('images/mvc/clubsandsos/Rectangle 103.png'),
           fit: BoxFit.fill
             )
           ),
         ),
          ///Framedate.png
          Row(
            children: [
             Container(
             margin:EdgeInsets.only(left: 16,top: 7),
             child: Image.asset('images/mvc/sitting/Framedate.png'),  
             ),
              Container(
                margin:EdgeInsets.only(left:4,top: 7),
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child:  Text('Date',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: Colors.black,
                        fontWeight:FontWeight.w700,
                        fontSize: 12
                    ),
                  ) ,
                ),
              ),
              Container(
                margin:EdgeInsets.only(left: 28,top: 7),
                child: Image.asset('images/mvc/sitting/timdsdasessad.png'),
              ),
              Container(
                margin:EdgeInsets.only(left:4,top: 7),
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child:  Text('Time',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: Colors.black,
                        fontWeight:FontWeight.w700,
                        fontSize: 12
                    ),
                  ) ,
                ),
              ),
              Container(
                margin:EdgeInsets.only(left:169,top: 7),
                child: Image.asset('images/mvc/sitting/dsascadscs.png'),
              ),
              Container(
                margin:EdgeInsets.only(left:4,top: 7),
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child:  Text('20 going',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: Colors.black,
                        fontWeight:FontWeight.w700,
                        fontSize: 12
                    ),
                  ) ,
                ),
              ),
            ],
          ),
            Container(
              margin:EdgeInsets.only(left:16,top: 10),
              child: Align(
                alignment: AlignmentDirectional.topStart,
                child:  Text('Title',
                  style: TextStyle(
                      fontFamily: 'Satoshi-Variable',
                      color:facebooklikecolor,
                      fontWeight:FontWeight.w700,
                      fontSize: 20
                  ),
                ) ,
              ),
            ),
          ///location 03.png
          Row(
            children: [
              Container(
                margin:EdgeInsets.only(left:16,top: 7),
                child: Image.asset('images/mvc/sitting/location 03.png'),
              ),
              Container(
                margin:EdgeInsets.only(left:4,top: 7),
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child:  Text('Location',
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color:Colors.black,
                        fontWeight:FontWeight.w700,
                        fontSize: 12
                    ),
                  ) ,
                ),
              ),
            ],
          ),
          Container(
            margin:EdgeInsets.only(left:16,top: 34),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child:  Text('Description',
                style: TextStyle(
                    fontFamily: 'Satoshi-Variable',
                    color:facebooklikecolor,
                    fontWeight:FontWeight.w700,
                    fontSize:16
                ),
              ) ,
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin:EdgeInsets.only(left:16,right: 16,top:4),
            child:  Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. Donec ut rhoncus ex. Suspendisse ac rhoncus nisl, eu tempor urna. Curabitur vel bibendum lorem. Morbi convallis convallis diam sit amet lacinia. Aliquam in elementum tellus.',
              style: TextStyle(
                  fontFamily: 'Satoshi-Medium',
                  color:facebooklikecolor,
                  fontWeight:FontWeight.w500,
                  fontSize:13
              ),
            ) ,
          ),
          Row(
           children: [
             Container(
               margin:EdgeInsets.only(left:16,top: 8),
               child: Image.asset('images/mvc/sitting/ban 1.png'),
             ),
             Container(
               alignment: Alignment.center,
               margin:EdgeInsets.only(left:4,top:8),
               child:  Text('Minimum age',
                 style: TextStyle(
                     fontFamily: 'Satoshi-Medium',
                     color:Colors.black,
                     fontWeight:FontWeight.w500,
                     fontSize:12
                 ),
               ) ,
             ),
             Container(
               margin:EdgeInsets.only(left:26,top: 8),
               child: Image.asset('images/mvc/sitting/bow-tie-svgrepo-com (2) 1.png'),
             ),
             Container(
               alignment: Alignment.center,
               margin:EdgeInsets.only(left:4,top: 8),
               child:  Text('Dress code',
                 style: TextStyle(
                     fontFamily: 'Satoshi-Medium',
                     color:Colors.black,
                     fontWeight:FontWeight.w500,
                     fontSize:12
                 ),
               ) ,
             ),
           ],
          ),
          ///numbers row
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                margin:EdgeInsets.only(left:32,top: 4),
                child:  Text('18+',
                  style: TextStyle(
                      fontFamily: 'Satoshi-Medium',
                      color:splashcolor,
                      fontWeight:FontWeight.w700,
                      fontSize:13
                  ),
                ) ,
              ),
              Container(
                alignment: Alignment.center,
                margin:EdgeInsets.only(left:94,top: 4),
                child:  Text('Smart casual',
                  style: TextStyle(
                      fontFamily: 'Satoshi-Medium',
                      color:splashcolor,
                      fontWeight:FontWeight.w700,
                      fontSize:13
                  ),
                ) ,
              ),
            ],
          ),
          ///Special deals
          Container(
            alignment: Alignment.topLeft,
            margin:EdgeInsets.only(left:16,top: 12),
            child:  Text('Special dealsl',
              style: TextStyle(
                  fontFamily: 'Satoshi-Variable',
                  color:filedcolor,
                  fontWeight:FontWeight.w700,
                  fontSize:16
              ),
            ),
          ),
          SizedBox(height: 8,),
          Card(
         margin: EdgeInsets.only(left: 16,right: 16),
         elevation: 1,
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(9)
         ),
         color: Colors.white,
         child: Container(
           height:56,
           width:343,
           decoration:BoxDecoration(
             borderRadius: BorderRadius.circular(9),
             color: Colors.white
           ),
           child:Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Column(
                 children: [
                   Container(
                     margin:EdgeInsets.only(left:14,top: 7),
                     child:Text('Title',
                       style: TextStyle(
                           fontFamily: 'Satoshi-Medium',
                           color:splashcolor,
                           fontWeight:FontWeight.w500,
                           fontSize:12
                       ),
                     ),
                   ),
                   Container(
                     margin:EdgeInsets.only(left:14,top: 7),
                     child:Text('Placeholder text',
                       style: TextStyle(
                           fontFamily: 'Satoshi-Variable',
                           color:Latestofferscolors,
                           fontWeight:FontWeight.w700,
                           fontSize:13
                       ),
                     ),
                   )
                 ],
               ),
               Container(
                 margin:EdgeInsets.only(right:14,top: 7),
                 child:Text('\$10',
                   style: TextStyle(
                       fontFamily: 'Satoshi-Medium',
                       color:splashcolor,
                       fontWeight:FontWeight.w500,
                       fontSize:12
                   ),
                 ),
               )
             ],
           ),
         ),
          ),
          ///rebeats
          Container(
            alignment: Alignment.topLeft,
            margin:EdgeInsets.only(left:16,top: 12),
            child:  Text('Tickets',
              style: TextStyle(
                  fontFamily: 'Satoshi-Variable',
                  color:filedcolor,
                  fontWeight:FontWeight.w700,
                  fontSize:16
              ),
            ),
          ),
          SizedBox(height: 8,),
          InkWell(
            onTap:(){
              print('Button Number 1');
            },
            child: Card(
              margin: EdgeInsets.only(left: 16,right: 16),
              elevation: 1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9)
              ),
              color: Colors.white,
              child: Container(
                height:56,
                width:343,
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: Colors.white
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin:EdgeInsets.only(left:14,top: 7),
                          child:Text('Title',
                            style: TextStyle(
                                fontFamily: 'Satoshi-Medium',
                                color:splashcolor,
                                fontWeight:FontWeight.w500,
                                fontSize:12
                            ),
                          ),
                        ),
                        Container(
                          margin:EdgeInsets.only(left:14,top: 7),
                          child:Text('Placeholder text',
                            style: TextStyle(
                                fontFamily: 'Satoshi-Variable',
                                color:Latestofferscolors,
                                fontWeight:FontWeight.w700,
                                fontSize:13
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin:EdgeInsets.only(right:14,top: 7),
                      child:Text('\$10',
                        style: TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color:splashcolor,
                            fontWeight:FontWeight.w500,
                            fontSize:12
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
         SizedBox(height: 15,),
         Row(
           children: [
             InkWell(
               onTap:(){
                 print('Button Number 2');
               },
               child: Card(
                 elevation:2,
                 margin:EdgeInsets.only(left:16),
                 color:splashcolor,
                 shape:RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(9)
                 ),
                 child: Container(
                    decoration:BoxDecoration(
                     borderRadius:BorderRadius.circular(9),
                     color:splashcolor
                    ),
                   width:134,
                   height:34,
                   child: Center(
                     child:Text('Book now',
                       style: TextStyle(
                           fontFamily: 'Satoshi-Variable',
                           color:Colors.white,
                           fontWeight:FontWeight.w700,
                           fontSize:13
                       ),
                     ),
                   ),
                 ),
               ),
             ),
             ///next btn
             InkWell(
               onTap:(){
                 print('Button Number 3');
               },
               child: Card(
                 elevation:2,
                 margin:EdgeInsets.only(left:7),
                 color:btneventorbackgroung,
                 shape:RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(9)
                 ),
                 child: Container(
                   decoration:BoxDecoration(
                       borderRadius:BorderRadius.circular(9),
                       color:btneventorbackgroung
                   ),
                   width:134,
                   height:34,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       ///Group 162733.png
                       Center(
                         child:Image.asset('images/mvc/sitting/Group 162733.png'),
                       ),
                       Container(
                         margin:EdgeInsets.only(left: 8),
                         child: Center(
                           child:Text('Book now',
                             style: TextStyle(
                                 fontFamily: 'Satoshi-Medium',
                                 color:chatscolors2,
                                 fontWeight:FontWeight.w700,
                                 fontSize:13
                             ),
                           ),
                         ),
                       ),
                     ],
                   )
                 ),
               ),
             ),
             ///last btn
             InkWell(
               onTap:(){
                 print('Button Number 3');
               },
               child: Card(
                 elevation:2,
                 margin:EdgeInsets.only(left:7),
                 color:btnestttting,
                 shape:RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(9)
                 ),
                 child: Container(
                     decoration:BoxDecoration(
                         borderRadius:BorderRadius.circular(9),
                         color:btnestttting
                     ),
                     width:62,
                     height:34,
                     child:Center(
                       child: Image.asset('images/mvc/sitting/menu-circle-vertical.png'),
                     )
                 ),
               ),
             )
           ],
         )
        ],
      ),
    );
  }
}