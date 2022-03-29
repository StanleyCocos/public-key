

import 'package:ad_mvc/ad_mvc.dart';
import 'package:flutter/material.dart';
import 'package:public_key/page/home/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends BasePageState<HomePage, HomeController> {

  @override
  HomeController controller = HomeController();

  @override
  Widget get content {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.green,
    );
  }
}