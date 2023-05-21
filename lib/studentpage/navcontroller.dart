import 'package:ecampus/studentpage/ui/secrowpages/campus.dart';
import 'package:ecampus/studentpage/ui/secrowpages/chat.dart';
import 'package:ecampus/studentpage/ui/secrowpages/menu.dart';
import 'package:get/get.dart';

import '../mvc/homemvc.dart';
import '../mvc/ui/menupages/discuontpage.dart';
class NavbarController extends GetxController{
  final RxInt  _index = 2.obs;
  List widgets = [
    homemvc(),
    discuontpage(),
    chatpage(),
    campuspage(),///menu
    menu(),
  ];
  RxInt get index => _index;

  void next(int index){
    _index.value = index;
  }


}