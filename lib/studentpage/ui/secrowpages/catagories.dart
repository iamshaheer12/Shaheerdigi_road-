import 'package:flutter/material.dart';
import '../../../color.dart';
import '../../../mvc/ui/newdir/discountcatwidgetpage.dart';
import '../widget/listviewbuilder.dart';
class catagories extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _catagoriesstate();
  }
}
class _catagoriesstate extends  State<catagories>{
  var serarchdis='';
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    var fitemsval=['Electronics','Women’s clothing & shoes',
     'Men’s clothing & shoes','Furniture','Vehicles',
    ''];
    //1.png
    var fitemsimages=['1.png'];
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: screensize.height*0.003,),
          Container(
            alignment: AlignmentDirectional.topStart,
            margin: EdgeInsets.only(left: screensize.width*0.05,top: 15),
            child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Image.asset('images/backarrow.png')),
          ),
          SizedBox(height: screensize.height*0.006,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: screensize.width*0.06),
                child:  Align(
                alignment: AlignmentDirectional.topStart,
                child:  Text('Categories',
                style:TextStyle(
                fontFamily: 'Satoshi-Medium',
                color: Colors.black,
                fontWeight:FontWeight.w700,
                fontSize: 32
                    ),
                  ),
                ),
              ),
            ],
          ),
        SizedBox(height: 25,),
          Container(
            margin: EdgeInsets.only(left: screensize.width*0.05,
                right: screensize.width*0.05),
            height: 33,
            width: screensize.width*0.7,
            child: Row(
                children: [
                  ///smallmed.png
                  Container(
                    margin: EdgeInsets.only(left: screensize.width*0.06),
                    child: Image.asset('images/searchformar.png',
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5,
                    ),
                    height: 33,
                    width: screensize.width*0.7,
                    child:TextFormField(
                      textInputAction:TextInputAction.next,
                      onChanged: (value){
                        setState(() {
                          serarchdis=value;
                        });
                      },
                      textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      ///Search in marketplace
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      label: Directionality(
                          textDirection: TextDirection.ltr,
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Text('Search in marketplace',
                              textAlign: TextAlign.center,
                              style:TextStyle(
                                fontFamily: 'Satoshi-Medium',
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                    )
                    ),
                  ),
                ],
            ),
            decoration: BoxDecoration(
                color: splashgragy2,
                borderRadius: BorderRadius.circular(20)
            ),
          ),
          SizedBox(height: 30,),
          Align(
            alignment: AlignmentDirectional.topStart,
            child:Container(
              margin: EdgeInsets.only(left: screensize.width*0.06,
              ),
              child:  Text('Top categories',
                style:TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight:FontWeight.w500,
                    fontSize: 13
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context) =>
                  discountcatwidgetpage(txt: 'Electronics',img: ''),));
            },
            child: litbuild(text:'Electronics' ,
              img:'mvc/cat/Electronics.png' ),
          ),
          SizedBox(height: 5,),
          InkWell(
            onTap: (){
         Navigator.push(context,
         MaterialPageRoute(builder: (context) =>
         discountcatwidgetpage(txt: 'Women’s clothing & shoes',
             img: ''),));
            },
            child: litbuild(text:'Women’s clothing & shoes' ,
              img:'mvc/cat/Women’s clothing & shoes.png' ),
          ),
          SizedBox(height: 5,),
          InkWell(
        onTap: (){
         Navigator.push(context,
         MaterialPageRoute(builder: (context) =>
         discountcatwidgetpage(txt: 'Men’s clothing & shoes',
         img: ''),));
            },
            child: litbuild(text:'Men’s clothing & shoes' ,
              img:'mvc/cat/Men’s clothing & shoes.png' ),
          ),
          SizedBox(height: 5,),
          InkWell(
         onTap: (){
         Navigator.push(context,
         MaterialPageRoute(builder: (context) =>
         discountcatwidgetpage(txt: 'Furniture',
                          img: ''),));
            },
            child: litbuild(text:'Furniture' ,
              img:'mvc/cat/Furniture.png' ),
          ),
          SizedBox(height: 5,),
          InkWell(
            onTap: (){
         Navigator.push(context,
        MaterialPageRoute(builder: (context) =>
        discountcatwidgetpage(txt: 'Vehicles',
        img: ''),));
            },
            child: litbuild(text:'Vehicles' ,
              img:'mvc/cat/Vehicles.png' ),
          ),
          ///***********************************************
          ///gregtrgetrhthhy
          SizedBox(height: 15,),
          Align(
            alignment: AlignmentDirectional.topStart,
            child:Container(
              margin: EdgeInsets.only(left: screensize.width*0.06,
              ),
              child:  Text('All categories',
                style:TextStyle(
                    fontFamily: 'Satoshi-Medium',
                    color: Colors.black,
                    fontWeight:FontWeight.w400,
                    fontSize: 12
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
      Navigator.push(context,
        MaterialPageRoute(builder: (context) =>
         discountcatwidgetpage(txt: 'Antiques & Collectibles',
          img: ''),));
            },
            child: litbuild(text:'Antiques & Collectibles' ,
              img:'mvc/cat/Antiques & collectibles.png' ),
          ),
          SizedBox(height: 5,),
          InkWell(
            onTap: (){
           Navigator.push(context,
           MaterialPageRoute(builder: (context) =>
           discountcatwidgetpage(txt: 'Appliances',
           img: ''),));
            },
            child: litbuild(text:'Appliances' ,
              img:'mvc/cat/Appliances.png' ),
          ),
          SizedBox(height: 5,),
          InkWell(
            onTap: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) =>
            discountcatwidgetpage(txt: 'Books, films & music',
           img: ''),));
            },
            child: litbuild(text:'Books, films & music' ,
              img:'mvc/cat/Books, films & music.png' ),
          ),
          SizedBox(height: 5,),
          InkWell(
            onTap: (){
       Navigator.push(context,
       MaterialPageRoute(builder: (context) =>
       discountcatwidgetpage(txt: 'Free',
       img: ''),));
            },
            child: litbuild(text:'Free' ,
              img:'mvc/cat/Free.png' ),
          ),
          SizedBox(height: 5,),
          InkWell(
            onTap: (){
          Navigator.push(context,
          MaterialPageRoute(builder: (context) =>
          discountcatwidgetpage(txt: 'Music Instruments',
               img: ''),));
            },
            child: litbuild(text:'Music Instruments' ,
              img:'mvc/cat/Music instruments.png' ),
          ),
          SizedBox(height: 5,),
          ///***********************************************
         ]
      )
    );
  }
}