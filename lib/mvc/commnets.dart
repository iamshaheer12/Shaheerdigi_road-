
import 'package:flutter/material.dart';

import '../providers/docswidget.dart';
import '../studentpage/ui/homepages/profilepage.dart';
class commnets extends StatefulWidget{
  var docsvalue;
  commnets({this.docsvalue});
  @override
  State<StatefulWidget> createState() {
   return _commnestate(
       docsvalue: this.docsvalue);
  }
}
class _commnestate extends State<commnets>{
  var docsvalue;
  _commnestate({this.docsvalue});
  //var crnuser=FirebaseAuth.instance.currentUser;
  int topbarselection=1;
  List datalst2=[];
  List docsvalue2=[];
  bool islikeclicked=false;
  // getdata()async{
  //   var myprofiledata2=FirebaseFirestore.instance.collection('post');
  //   var response=await myprofiledata2.get().then((value){
  //     value.docs.forEach((element) {
  //       print('=================================');
  //       print('=================================');
  //       print(element.data());
  //       print('=================================');
  //       print('=================================');
  //       setState(() {
  //         docsvalue2.add(element.id);
  //         datalst2.add(element.data());
  //       });
  //     });
  //   });
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
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView(
       children: [

       ],
     ),
   );
  }

}