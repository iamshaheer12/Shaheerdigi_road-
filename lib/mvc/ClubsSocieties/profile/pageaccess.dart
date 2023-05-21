import 'package:flutter/material.dart';

import '../../../color.dart';
import 'addingmembers.dart';
///pageaccess
class pageaccess extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _pageaccessstate();
  }
}
class _pageaccessstate extends State<pageaccess>{
  @override
  Widget build(BuildContext context) {
   var screensize=MediaQuery.of(context).size;
   return Scaffold(
   body:ListView(
   children: [
   SizedBox(height: 12,),
   Row(
   mainAxisAlignment:MainAxisAlignment.spaceBetween,
   children: [
     Container(
       alignment: AlignmentDirectional.topStart,
       margin: EdgeInsets.only(left: screensize.width*0.05,top: 5),
       child: InkWell(
           onTap: (){
             Navigator.pop(context);
           },
           child: Image.asset('images/mvc/coloredbackarrow.png')),
     ),
    Container(
    child:Align(
      alignment: AlignmentDirectional.center,
      child:  Text('Page access',
        style: TextStyle(
            fontFamily: 'Satoshi-Variable',
            color:Colors.black,
            fontWeight:FontWeight.w700,
            fontSize: 17
        ),
      ) ,
    ),
    ),
     Container(
       alignment: AlignmentDirectional.topEnd,
       margin: EdgeInsets.only(right:19,top:2),
       child: InkWell(
           onTap: (){
            print('not under');
           },
           child: Image.asset('images/mvc/cat/information.png')),
     ),
   ],
   ),
   SizedBox(height: 18,),
   Row(
   mainAxisAlignment:MainAxisAlignment.spaceBetween,
   children: [
   Container(
     margin:EdgeInsets.only(left:16,bottom:2),
     child:Align(
       alignment: AlignmentDirectional.topStart,
       child:  Text('People with access',
         style: TextStyle(
             fontFamily: 'Satoshi-Variable',
             color:poldpageconnected,
             fontWeight:FontWeight.w600,
             fontSize: 15
         ),
       ) ,
     ),
   ),
     InkWell(
       onTap:(){
         ///addingmembers
         Navigator.push(context,
             MaterialPageRoute(builder: (context) => addingmembers(
               txt:'access',
             ),));
       },
       child: Container(
         margin:EdgeInsets.only(right:17),
         child:Align(
           alignment: AlignmentDirectional.topStart,
           child:  Text('Add new',
             style: TextStyle(
                 fontFamily: 'Satoshi-Variable',
                 color:chatscolors2,
                 fontWeight:FontWeight.w500,
                 fontSize: 15
             ),
           ) ,
         ),
       ),
     ),
   ],
   ),
   SizedBox(height: 15,),
   ListView.builder(
    itemCount:4,
    shrinkWrap: true,
    //scrollDirection: Axis.vertical,
    physics: NeverScrollableScrollPhysics(),
    itemBuilder: (context,index){
    print('----------------------------------------');
    print('----------------------------------------');
    print('---------------${index}---------------');
    print('----------------------------------------');
    print('----------------------------------------');
    return SingleChildScrollView(
      scrollDirection:Axis.vertical,
      child: Column(
      children: [
      Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin:EdgeInsets.only(left:68),
          child:Align(
            alignment: AlignmentDirectional.topStart,
            child:  Text('Student full name',
              style: TextStyle(
                  fontFamily: 'Satoshi-Variable',
                  color:blackfinaltxtcolors,
                  fontWeight:FontWeight.w700,
                  fontSize: 14
              ),
            ) ,
          ),
        ),
        Container(
          margin:EdgeInsets.only(right:16),
          child: InkWell(
              onTap: (){
                print('not sdsd');
              },
              child: Image.asset('images/mvc/cat/menu-circle-vertical.png')),
        ),
      ],
      ),
        Container(
          margin:EdgeInsets.only(top:4,right: 104,left:68),
          child:Align(
            alignment: AlignmentDirectional.center,
            child:  Text('Content, Message, Community activity, Ads, Insights, Permissions, Page deletion ',
              style: TextStyle(
                  fontFamily: 'Satoshi-Medium',
                  color:cccccted,
                  fontWeight:FontWeight.w700,
                  fontSize: 14
              ),
            ) ,
          ),
        ),

           SizedBox(height:4,)
          ],
      ),
    );}),
    ///Second
    SizedBox(height:11,),
     Row(
       mainAxisAlignment:MainAxisAlignment.spaceBetween,
       children: [
         Container(
           margin:EdgeInsets.only(left:16,bottom:2),
           child:Align(
             alignment: AlignmentDirectional.topStart,
             child:  Text('People with task access',
               style: TextStyle(
                   fontFamily: 'Satoshi-Variable',
                   color:poldpageconnected,
                   fontWeight:FontWeight.w600,
                   fontSize: 15
               ),
             ) ,
           ),
         ),
         InkWell(
          onTap:(){
           ///addingmembers
           Navigator.push(context,
           MaterialPageRoute(builder: (context) => addingmembers(
           txt:'task access',
           ),));
          },
           child: Container(
             margin:EdgeInsets.only(right:17),
             child:Align(
               alignment: AlignmentDirectional.topStart,
               child:  Text('Add new',
                 style: TextStyle(
                     fontFamily: 'Satoshi-Variable',
                     color:chatscolors2,
                     fontWeight:FontWeight.w500,
                     fontSize: 15
                 ),
               ) ,
             ),
           ),
         ),
       ],
     ),
     SizedBox(height: 15,),
     ListView.builder(
         itemCount:1,
         shrinkWrap: true,
         //scrollDirection: Axis.vertical,
         physics: NeverScrollableScrollPhysics(),
         itemBuilder: (context,index){
           print('----------------------------------------');
           print('----------------------------------------');
           print('---------------${index}---------------');
           print('----------------------------------------');
           print('----------------------------------------');
           return SingleChildScrollView(
             scrollDirection:Axis.vertical,
             child: Column(
               children: [
                 Row(
                   mainAxisAlignment:MainAxisAlignment.spaceBetween,
                   children: [
                     Container(
                       margin:EdgeInsets.only(left:68),
                       child:Align(
                         alignment: AlignmentDirectional.topStart,
                         child:  Text('Student full name',
                           style: TextStyle(
                               fontFamily: 'Satoshi-Variable',
                               color:blackfinaltxtcolors,
                               fontWeight:FontWeight.w700,
                               fontSize: 14
                           ),
                         ) ,
                       ),
                     ),
                     Container(
                       margin:EdgeInsets.only(right:16),
                       child: InkWell(
                           onTap: (){
                             print('not sdsd');
                           },
                       child: Image.asset('images/mvc/cat/menu-circle-vertical.png')),
                     ),
                   ],
                 ),
                 Container(
                   margin:EdgeInsets.only(top:4,right: 104,left:68),
                   child:Align(
                     alignment: AlignmentDirectional.center,
                     child:  Text('Insights                                                       ',
                       style: TextStyle(
                           fontFamily: 'Satoshi-Medium',
                           color:cccccted,
                           fontWeight:FontWeight.w700,
                           fontSize: 14
                       ),
                     ) ,
                   ),
                 ),

                 SizedBox(height:4,)
               ],
             ),
           );}),
   ],
   ),
   );
  }
}