

import 'package:ad_mvc/ad_mvc.dart';
import 'package:ad_mvc/base_state_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:public_key/page/welcome/welcome_controller.dart';

class WelcomePage extends StatefulWidget {

  const WelcomePage({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() => _WelcomeState();
}

class _WelcomeState extends BasePageState<WelcomePage, WelcomeController> {
  @override
  WelcomeController controller = WelcomeController();

  @override
  Widget? get navigation => null;

  @override
  Widget get content {

  }

}