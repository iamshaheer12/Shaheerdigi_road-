import 'package:flutter/material.dart';

import '../../../color.dart';
class litchatbuild extends StatelessWidget {
  String imgtxt="continue";
  var text='';
  var text2='';
  var pageroute;
  litchatbuild({required this.imgtxt,
    required this.text,
    required this.text2,
    required this.pageroute,
  });
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          margin: EdgeInsets.only(),
          decoration: BoxDecoration(
            color: chatscolors2,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(child: Text(
            '${imgtxt}',
            style: TextStyle(
                fontFamily: 'Satoshi-Medium',
                color: Colors.white,
                fontWeight:FontWeight.w500,
                fontSize: 16
            ),
          )),
        ),
        Align(
          alignment: AlignmentDirectional.topStart,
          child:Container(
            margin: EdgeInsets.only(left: screensize.width*0.001,
            ),
            child:  Column(
              children: [
                Text(text,
                  style:TextStyle(
                      fontFamily: 'Satoshi-Medium',
                      color: Colors.black,
                      fontWeight:FontWeight.w400,
                      fontSize: 20
                  ),
                ),
                Text(text2,
                  style: TextStyle(
                      fontFamily: 'Satoshi-Medium',
                      color: Colors.black,
                      fontWeight:FontWeight.w400,
                      fontSize: 14
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}