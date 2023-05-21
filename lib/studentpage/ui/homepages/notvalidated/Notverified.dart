import 'package:ecampus/studentpage/ui/homepages/notvalidated/virefedcode.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../../color.dart';
class Notverified extends StatefulWidget{
  List datalst=[];
  Notverified({required this.datalst});
  @override
  State<StatefulWidget> createState() {
    return _Notverifiedstate(datalst: this.datalst);
  }}

  class _Notverifiedstate extends State<Notverified>{
    List datalst=[];
    var comnumb;
    var gender='';
    
    var docsvalue;
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
    _Notverifiedstate({required this.datalst});
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:splashgragy ,
      body: Container(
        width: screensize.width,
       height: screensize.height,
      decoration: BoxDecoration(
     color: splashgragy
      ),
   child: SingleChildScrollView(
     scrollDirection: Axis.vertical,
      child: Column(
     children: [
     SizedBox(
       height: 20,
        ),
       Container(
         decoration: BoxDecoration(
         borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
       topRight: Radius.circular(25),
       )
     ),
        child: Stack(
         children: [
          Container(
          width: screensize.width,
          height: screensize.height*0.95,
            margin: EdgeInsets.only(top: screensize.height*0.10),
            decoration: BoxDecoration(
           color: Colors.white,
         borderRadius: BorderRadius.all(Radius.circular(25)),
         ),
         child: SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child: Column(
          children: [
           Container(
          margin: EdgeInsets.only(left: screensize.width*0.1),
              child:  Align(
                 alignment: AlignmentDirectional.topStart,
             child:  Text('Your new number',
                style:TextStyle(
                    fontFamily: 'Satoshi-Medium',
              color: Colors.black,
                fontWeight:FontWeight.w700,
          fontSize: 32
            ),
            ) ,
            ),
         ),
            Card(
                margin: EdgeInsets.only(right: screensize.width*0.05,
                    left: screensize.width*0.05),
                elevation: 2,
                child: Container(
                    width: screensize.width*0.8,
                    height: 64,
                    decoration: BoxDecoration(
                        color: Colors.white
                    ),
                    child:Container(
                      child: IntlPhoneField(
                        flagsButtonMargin: EdgeInsets.only(top: 25),
                        showCursor: true,
                        autofocus: true,
                        autovalidateMode:AutovalidateMode.values.first,

                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                           border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 2),
                            hintText:  'Mobile number',
                            hintStyle: TextStyle(
                              fontFamily: 'Satoshi-Medium',
                              color:Colors.black,
                              fontWeight:FontWeight.w400,
                              fontSize: 13,
                            )
                        ),
                        onChanged: (phone){
                          print(phone.completeNumber);
                          setState(() {
                            comnumb=phone.completeNumber;
                            print(phone.completeNumber);
                            print('============================================');
                            print('============================================');
                            print('================================');
                            print('============${comnumb}============');
                            print('===============================');
                            print('============================================');
                          });

                        },
                        onSaved: (phone){
                          print(phone!.completeNumber);
                          setState(() {
                            comnumb=phone.completeNumber;
                            print(phone.completeNumber);
                            print('============================================');
                            print('============================================');
                            print('================================');
                            print('============${comnumb}============');
                            print('===============================');
                            print('============================================');
                          });

                        },
                        onCountryChanged: (country) {
                          print('Country changed to: ' + country.name);
                        },
                        onTap: (){
                          print('============================================');
                          print('============================================');
                          print('=================================');
                          print('==================${comnumb}==================');
                          print('============================================');
                          print('============================================');

                        },
                      ),
                    )
                )
            ),//5 contianer
    SizedBox(height: screensize.height*0.009,),
         Center(
          child: Container(
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
              print('==========================================');
              print('==========================================');
              print('===============..${comnumb}....=================');
              print('==========================================');
              print('==========================================');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>virefedcode(txt:'${comnumb}',
                  datalst: datalst,)));
            },
              style:ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(splashcolor),
                  elevation: MaterialStateProperty.all(3)
              ),
              child: Center(
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child:   Text('Verify',
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
             )

           ],
            ),
             ),
            ),
           ],
         ),
      ),
     ],
      ),
     )
   ),
    );
   }
   }