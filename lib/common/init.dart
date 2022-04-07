

import 'package:ad_cache/db/db_manager.dart';
import 'package:ad_extension/ad_extension.dart';

class App {

  static Future init() async {
    await DBManager.init();
    _initColor();
  }


  static Future _initColor() async {
    ColorManager.init(0x25C489);
  }

}
