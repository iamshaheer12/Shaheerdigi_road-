import 'package:flutter/material.dart';


Icon customIconNav(IconData icon) {
  return Icon(
    icon,
    size: 25,
    color: Colors.white,
  );
}

Widget customIconNavHome(IconData icon) {
  return Container(
    width: 25,
    height: 25,
    decoration: const BoxDecoration(
      color: Colors.white,
      shape: BoxShape.circle,
    ),
    child: Icon(
      icon,
      size: 25,
      color: Colors.black,
    ),
  );
}

Widget customButtonAppBar({IconData? icon, Function? onTab}) {
  return GestureDetector(
    onTap: () {},
    child: Padding(
      padding: EdgeInsets.all(8),
      child: CircleAvatar(
        backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
        child:Icon(
          icon,
          size: 8,
          color: Colors.black,
        ),
      ),
    ),
  );
}

Widget customRoundButton({IconData? icon, String? text}) {

  return Padding(
    padding: const EdgeInsets.all(2),
    child: Container(
        width: 35,
        height: 15,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(229, 229, 229, 1),
          borderRadius: BorderRadius.all(Radius.circular(1)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              text!,
              style:  TextStyle(
                fontSize: 9,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 3,
            ),
            Icon(
              icon,
              size: 50,
              color: Colors.black,
            ),
          ],
        )),
  );
}


