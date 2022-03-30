

import 'package:ad_mvc/ad_mvc.dart';
import 'package:public_key/page/welcome/welcome_model.dart';

class WelcomeController extends BaseController<WelcomeModel> {

  @override
  WelcomeModel model = WelcomeModel();

  @override
  bool get content => true;

}