import 'package:flutter/material.dart';

import '../../color.dart';

class discountcatwidget extends StatelessWidget{
  var img='';
  var txt='';
  discountcatwidget({required this.img,required this.txt});
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return  Column(
      children: [
        Container(
         // margin: EdgeInsets.only(left: screensize.width*0.049),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: discountcolor,
              border: Border.all(width: 0.0001),
              borderRadius: BorderRadius.all(Radius.circular(100))
          ),
          child:  Align(
            alignment: AlignmentDirectional.center,
            child: Image.asset('images/mvc/$img') ,
          ),
        ),
        SizedBox(height: 7,),
        Align(
          alignment: AlignmentDirectional.center,
          child:  Text('${txt}',
            style: TextStyle(
                fontFamily: 'Satoshi-Variable',
                color: Colors.black,
                fontWeight:FontWeight.w500,
                fontSize: 12
            ),
          ) ,
        ),
      ],
    );
  }

}