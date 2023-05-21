import 'package:ecampus/mvc/adminpages/societyEmail.dart';
import 'package:flutter/material.dart';
import '../../color.dart';
import 'adminmainpages/adminmainpage.dart';
class Selectyourstructure extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
  return _Selectyourstructure();
  }
}
class _Selectyourstructure extends State<Selectyourstructure>{
  
  var docsvalue;
  List datalst=[];

  @override
  void initState() {
   

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
  return Scaffold(
    body: ListView(
      children: [
        SizedBox(height: screensize.height*0.002,),
        Container(
          alignment: AlignmentDirectional.topStart,
          margin: EdgeInsets.only(left: screensize.width*0.02,top: 10),
          child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Image.asset('images/mvc/coloredbackarrow.png')),
        ),
        SizedBox(height: screensize.height*0.06,),
            Container(
              margin: EdgeInsets.only(left: screensize.width*0.04),
              child:  Align(
                alignment: AlignmentDirectional.topStart,
                child:  Text('Select your structure?',
                  style:TextStyle(
                      fontFamily: 'Satoshi-Medium',
                      color: Colors.black,
                      fontWeight:FontWeight.w700,
                      fontSize: 28
                  ),
                ),
              ),
        ),
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Container(
            margin: EdgeInsets.only(left:screensize.width*0.04,
            ),
            child: Text('Select your structure for verification purposes.',
              style: TextStyle(
                  fontFamily: 'Satoshi-Medium',
                  color: event2colors,
                  fontWeight:FontWeight.w500,
                  fontSize: 13
              ),
            ),
          ),
        ),
        SizedBox(height: 15,),
        InkWell(
          onTap: (){
            try{
              Navigator.push(context,
                  MaterialPageRoute(builder:
                      (context) => SocietyEmail(structure: 'Club'),));
            }
            catch(e){
              print('-------------------------');
              print('-------------------------');
              print('eroor is $e--------------');
              print('-------------------------');
              print('-------------------------');
            }
          },
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            ),
            margin: EdgeInsets.only(left: 20,right: 20),
            child: Container(
              height: 78,
              width: 343,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white
              ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   margin: EdgeInsets.only(left: screensize.width*0.04,top: 30),
                   child:  Align(
                     alignment: AlignmentDirectional.topStart,
                     child:  Text('Club',
                       style:TextStyle(
                           fontFamily: 'Satoshi-Medium',
                           color: Colors.black,
                           fontWeight:FontWeight.w700,
                           fontSize:16
                       ),
                     ),
                   ),
                 ),
                 Align(
                     alignment: AlignmentDirectional.topEnd,
                   child: Container(
                     margin: EdgeInsets.only(right: screensize.width*0.03,top: 30),
                     child: Image.asset('images/mvc/backarrow.png'),
                   ),
                 )
               ],
             ),
            ),
          ),
        ),
        ///this is second card
        SizedBox(height: 15,),
        InkWell(
          onTap: (){
           try{
             Navigator.push(context,
                 MaterialPageRoute(builder:
                     (context) =>SocietyEmail(structure:'Society'),));
           }
           catch(e){
             print('-------------------------');
             print('-------------------------');
             print('eroor is $e--------------');
             print('-------------------------');
             print('-------------------------');
             Navigator.push(context,
                 MaterialPageRoute(builder:
                     (context) =>
                     SocietyEmail(structure:'Society'),));
           }
          },
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
            ),
            margin: EdgeInsets.only(left: 20,right: 20),
            child: Container(
              height: 78,
              width: 343,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: screensize.width*0.04,top: 30),
                    child:  Align(
                      alignment: AlignmentDirectional.topStart,
                      child:  Text('Society',
                        style:TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: Colors.black,
                            fontWeight:FontWeight.w700,
                            fontSize:16
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Container(
                      margin: EdgeInsets.only(right: screensize.width*0.03,top: 30),
                      child: Image.asset('images/mvc/backarrow.png'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        ///this is third
        SizedBox(height: 15,),
        InkWell(
        onTap: (){
         try{
           Navigator.push(context,
           MaterialPageRoute(builder:
           (context) =>
           SocietyEmail(structure:'Student union'),));
         }
      catch(e){
           print('-------------------------');
           print('-------------------------');
           print('eroor is $e--------------');
           print('-------------------------');
           print('-------------------------');
           Navigator.push(context,
           MaterialPageRoute(builder:
           (context) =>
           SocietyEmail(structure:'Student union'),));
      }
          },
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
            ),
            margin: EdgeInsets.only(left: 20,right: 20),
            child: Container(
              height: 78,
              width: 343,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///SocietyEmail
                  Container(
                    margin: EdgeInsets.only(left: screensize.width*0.04,top: 30),
                    child:  Align(
                      alignment: AlignmentDirectional.topStart,
                      child:  Text('Student union',
                        style:TextStyle(
                            fontFamily: 'Satoshi-Medium',
                            color: Colors.black,
                            fontWeight:FontWeight.w700,
                            fontSize:16
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Container(
                      margin: EdgeInsets.only(right: screensize.width*0.03,top: 30),
                      child: Image.asset('images/mvc/backarrow.png'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
  }

}
