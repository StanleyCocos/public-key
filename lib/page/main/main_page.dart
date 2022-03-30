

import 'package:ad_mvc/ad_mvc.dart';
import 'package:flutter/material.dart';
import 'package:public_key/page/main/main_controller.dart';

class MainPage extends StatefulWidget {

  const MainPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MainState();

}

class _MainState extends BasePageState<MainPage, MainController> {
  @override
  MainController controller = MainController();

  @override
  Widget? get navigation => null;

  @override
  Widget get content {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey,
    );
  }
}