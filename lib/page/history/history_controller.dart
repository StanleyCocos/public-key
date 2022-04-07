

import 'package:ad_mvc/ad_mvc.dart';
import 'package:public_key/page/history/history_model.dart';

class HistoryController extends BaseController<HistoryModel> {
  @override
  HistoryModel model = HistoryModel();

  @override
  bool get content => true;
}