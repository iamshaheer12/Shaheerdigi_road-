import 'package:flutter/material.dart';
class productcatagories extends StatefulWidget{
  var catagories='';
  productcatagories({
    required this.catagories,
  });
  @override
  State<StatefulWidget> createState() {
    return _productcatagoriesstate(catagories: this.catagories);
  }
}
class _productcatagoriesstate extends State<productcatagories> {
  var catagories='';
  _productcatagoriesstate({
    required this.catagories,
  });
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