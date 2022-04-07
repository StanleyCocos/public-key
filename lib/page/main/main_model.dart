import 'package:ad_mvc/ad_mvc.dart';
import 'package:flutter/widgets.dart';
import 'package:public_key/page/history/history_page.dart';
import 'package:public_key/page/home/home_page.dart';
import 'package:public_key/page/setting/setting_page.dart';

class MainModel extends BaseModel {
  List<Widget> pages = [];

  List<MainBarModel> bars = [];

  MainModel(){
    createData();
  }


  void createData(){
    pages = [
      HomePage(),
      HistoryPage(),
      SettingPage(),
    ];

    bars = [
      MainBarModel(title: "首页", selected: true),
      MainBarModel(title: "历史"),
      MainBarModel(title: "设置"),
    ];

  }
}

class MainBarModel extends BaseModel {
  final String title;
  final String dIcon;
  final String sIcon;
  bool selected;

  MainBarModel({
    this.title = "",
    this.dIcon = "",
    this.sIcon = "",
    this.selected = false,
  });

  Map<String, dynamic> get map => {
    "title": title,
    "dIcon": dIcon,
    "sIcon": sIcon,
    "selected": selected,
  };
}
