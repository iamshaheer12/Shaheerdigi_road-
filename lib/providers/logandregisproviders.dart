
// import 'package:flutter/material.dart';
// /// notifyListeners();
// class loginandregistrationproviders with ChangeNotifier {
  
//   var docsvalue;
//   List datalst=[];
//   getdata()async{
//     var myprofiledata=FirebaseFirestore.instance.collection('user');

//     await myprofiledata.where('username',
//         isEqualTo: '${crnuser!.email.toString()}').
//     get().then((value){
//       value.docs.forEach((element) {
//         if(value.docs.isEmpty)
//         {
//           CircularProgressIndicator();
//         }
//         print('=================================');
//         print('=================================');
//         print(element.data());
//         print(element.id);
//         print('${crnuser!.email.toString()}');
//         print('=================================');
//         print('=================================');
//           docsvalue=element.id;
//           datalst=[];
//           datalst.add(element.data());

//       });
//     });
//     ChangeNotifier();
//   }


//     ///ChangeNotifier();


// }