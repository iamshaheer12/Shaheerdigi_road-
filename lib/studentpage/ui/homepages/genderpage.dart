
import 'package:flutter/material.dart';
import '../../../color.dart';
import 'editprofile.dart';

class genderpage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _genderstate();
  }
}
class _genderstate extends State<genderpage>{
  // var crnuser=FirebaseAuth.instance.currentUser;
  var docsvalue;
  List datalst=[];
  // getdata()async{
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
    

    super.initState();
  }
  var _gender;
  var mygender;
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    //var crnuser=FirebaseAuth.instance.currentUser;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            alignment: AlignmentDirectional.topStart,
            margin: EdgeInsets.only(left: screensize.width*0.05,top: 15),
            child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Image.asset('images/mvc/coloredbackarrow.png')),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: screensize.width*0.1),
                child:  Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text('What’s your gender',
                    style:TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: Colors.black,
                        fontWeight:FontWeight.w700,
                        fontSize: 32
                    ),
                  ) ,
                ),
              ),
            ],
          ),
          ///this is end of edit
          //first contianer
          SizedBox(height: screensize.height*0.009,),
          Container(
            margin: EdgeInsets.only(left: screensize.width*0.1),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text('We need this information to verify your identity.',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: lightgraycolors,
                    fontWeight:FontWeight.w400,
                    fontSize: 13
                ),
              ),
            ),
          ),
          SizedBox(height: 35,),
         //start radio buttons
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text('Female   ',
                    style:TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: Colors.black,
                        fontWeight:FontWeight.w700,
                        fontSize: 14
                    ),
                  ),
                ),
              ),
              Radio(value: 1,
                  activeColor:splashcolor,
                  groupValue: _gender,
                  onChanged: (newValue) => setState(() => _gender = newValue),
                  ),

            ],
          ),
          //second raideo button
          SizedBox(height: 35,),
          //start radio buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text('Male     ',
                    style:TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: Colors.black,
                        fontWeight:FontWeight.w700,
                        fontSize: 14
                    ),
                  ),
                ),
              ),
              Radio(value: 2,
                  activeColor:splashcolor,
                  groupValue: _gender,
                  onChanged: (value){
                    setState(() {
                      _gender=value!;
                      print('gender value==$_gender');
                    });
                  }
              ),

            ],
          ),
          //end second raideo
          //Start third raideo button
          SizedBox(height: 35,),
          //start radio buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text('Custome',
                    style:TextStyle(
                        fontFamily: 'Satoshi-Medium',
                        color: Colors.black,
                        fontWeight:FontWeight.w700,
                        fontSize: 14
                    ),
                  ),
                ),
              ),
              Radio(value: 3,
                  activeColor:splashcolor,
                  groupValue: _gender,
                  onChanged: (value){
                    setState(() {
                      _gender=value!;
                      print('gender value==$_gender');
                    });
                  }
              ),

            ],
          ),
          //end thired rideo button
          SizedBox(height: 15,),
          Container(
            margin: EdgeInsets.only(left: screensize.width*0.1),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text('Select Custom to choose another gender, if you’d rather not say.',
                style: TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: lightgraycolors,
                    fontWeight:FontWeight.w400,
                    fontSize: 13
                ),
              ),
            ),
          ),
          SizedBox(height: screensize.height*0.4,),
          Container(
            margin: EdgeInsets.only(right: 15,left:15
                ,top: 15,bottom:15),
            height:48,
            width: screensize.width,
            decoration: BoxDecoration(
                color: splashcolor,
                border: Border.all(
                  color: splashcolor,
                  width:1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(5))
            ),
            child: ElevatedButton(onPressed: () async{
             
                if(_gender==2){
                  setState(() {
                    mygender='male';
                  });
                }
                else if(_gender==1){
                  setState(() {
                    mygender='female';
                  });
                }
                else if(_gender==3){
                  setState(() {
                    mygender='custom';
                  });
                }
                
                ///initloginpage()
               Navigator.push(context,
               MaterialPageRoute(builder: (context) =>editprofile(datalst: datalst,
                 gender: '${mygender}',) ,));
          

            },
              style:ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(splashcolor),
                  elevation: MaterialStateProperty.all(3)
              ),
              child: Center(
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child:   Text('Continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Satoshi-Variable',
                        color: Colors.white,
                        fontWeight:FontWeight.w100,
                        fontSize: 16
                    ),
                  ),
                ) ,
              ),

            ),
          )
        ],
      ),
    );
  }
}