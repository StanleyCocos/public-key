

import 'package:ad_mvc/ad_mvc.dart';
import 'package:public_key/page/add/add_page.dart';
import 'package:public_key/page/home/home_model.dart';

class HomeController extends BaseController<HomeModel> {

  @override
  HomeModel model = HomeModel();

  @override
  bool get content => true;
}

extension OnTap on HomeController {

  void onAddTap(){
    push(AddPage());
  }

}