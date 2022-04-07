

import 'package:ad_mvc/ad_mvc.dart';
import 'package:flutter/cupertino.dart';
import 'package:public_key/page/history/history_page.dart';
import 'package:public_key/page/home/home_page.dart';
import 'package:public_key/page/main/main_model.dart';
import 'package:public_key/page/setting/setting_page.dart';

class MainController extends BaseController<MainModel> {

  @override
  MainModel model = MainModel();

  @override
  bool get content => true;

  PageController pageController = PageController();


}

extension Data on MainController {

  List<Widget> get pages => model.pages;

  List<MainBarModel> get bars => model.bars;

}


extension OnTap on MainController {

  void onBarTap(int index){
    pageController.jumpToPage(index);
  }

}