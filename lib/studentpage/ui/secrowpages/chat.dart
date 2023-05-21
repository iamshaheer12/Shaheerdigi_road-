import 'package:flutter/material.dart';
import '../../mainpage.dart';
import '../widget/chatwidget.dart';

class chatpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
      return _chatpagestate();
  }
}
class _chatpagestate extends State<chatpage>{
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(body: ListView(
      children: [
        SizedBox(height: screensize.height*0.003,),
        Container(
          alignment: AlignmentDirectional.topStart,
          margin: EdgeInsets.only(left: screensize.width*0.05,top: 15),
          child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Image.asset('images/mvc/coloredbackarrow.png')),
        ),
        SizedBox(height: screensize.height*0.006,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: screensize.width*0.06),
              child:  Align(
                alignment: AlignmentDirectional.topStart,
                child:  Text('Chats',
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
              child: Image.asset('images/rewrite.png',
              ),
            ),
          ],
        ),
        SizedBox(height: 25,),
        Container(
          margin: EdgeInsets.only(left: screensize.width*0.05,right: screensize.width*0.05),
          height: 32,
          width: screensize.width*0.7,
          child: Center(
            child: Row(
              children: [
                //smallmed.png
                Container(
                  margin: EdgeInsets.only(left: screensize.width*0.06),
                  child: Image.asset('images/searchformar.png',
                  ),
                ),
                Container(
                  height: 32,
                  width: screensize.width*0.7,
                  margin: EdgeInsets.only(left: screensize.width*0.03
                  ),
                  child:  TextFormField(
                    decoration: InputDecoration(

                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,

                      contentPadding: EdgeInsets.only(left: 10,bottom: 7,top: 13),
                    hintText: 'Search'
                    ),
                    style: TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: Colors.black,
                        fontWeight:FontWeight.w400,
                        fontSize: 18
                    ),
                  ),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)
          ),
        ),
        SizedBox(height: 30,),
        SizedBox(height: 20,),
       Card(
         elevation: 1,
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(15)
         ),
         margin: EdgeInsets.only(left: 20,right: 20),
         child: Container(
           width: screensize.width,
           margin: EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
           decoration: BoxDecoration(
             border: Border.all(width: 0.1,color: Colors.white60,
             ),
             borderRadius: BorderRadius.all(Radius.circular(15)),
           ),
           child: SingleChildScrollView(
             scrollDirection: Axis.vertical,
             child: Column(
               children: [
                 litchatbuild(text:'Steve Solomon' ,
                   imgtxt: 'SS' ,pageroute:mainpage(),
                   text2: 'Hallo Jane, I hope you are...',),
                 SizedBox(height: 15,),
                 litchatbuild(text:'Michael Smith' ,
                  imgtxt: 'MS' ,pageroute:mainpage(),
                   text2: 'Hallo Jane, I hope you are...',),
                 SizedBox(height: 15,),
                 litchatbuild(text:'Conor Klein' ,
                  imgtxt: 'CK' ,pageroute:mainpage(),
                   text2: 'Hallo Jane, I hope you are...',),
                 SizedBox(height: 15,),
                 ///***********************************************
               ],
             ),
           ),
         ),
       )
      ],
    ),

    );
  }

}