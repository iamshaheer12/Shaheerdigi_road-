import 'package:flutter/material.dart';
import '../../../color.dart';
///addingmembers
class addclubingmembers extends StatefulWidget{
  var txt='';
  addclubingmembers({required this.txt});
  @override
  State<StatefulWidget> createState() {
    return _addclubingmembersstate(txt:this.txt);
  }
}
class _addclubingmembersstate extends State<addclubingmembers>{
  var txt='';
  _addclubingmembersstate({required this.txt});
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:clubsansosbackground,
      body:ListView(
        children: [
          SizedBox(height: 12,),
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
            margin:EdgeInsets.only(left:16,top:8),
            child:Align(
              alignment: AlignmentDirectional.topStart,
              child:  Text('Adding members',
                style: TextStyle(
                    fontFamily: 'Satoshi-Variable',
                    color:facebooklikecolor,
                    fontWeight:FontWeight.w700,
                    fontSize: 24
                ),
              ) ,
            ),
          ),
          SizedBox(height:14,),
          Container(
            margin: EdgeInsets.only(left:16,
                right:16),
            height: 32,
            width: screensize.width,
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
                    margin: EdgeInsets.only(left: screensize.width*0.03,
                    ),
                    height: 32,
                    width: screensize.width*0.67,
                    child:  TextFormField(
                      decoration:InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          ///'Search in marketplace',
                          hintText: 'Search with student number',
                          contentPadding: EdgeInsets.only(left: 1,bottom: 10),
                          hintStyle: TextStyle(
                            fontFamily: 'Satoshi-Light',
                            color:csccted,
                            fontWeight:FontWeight.w400,
                            fontSize: 16,
                          )
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:4),
                    child: Image.asset('images/mvc/cat/image 15.png',
                    ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
                color: splashgragy2,
                borderRadius: BorderRadius.circular(10)
            ),
          ),
        ],
      ),
    );
  }
}