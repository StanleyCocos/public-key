

import 'package:ad_mvc/ad_mvc.dart';
import 'package:flutter/cupertino.dart';
import 'package:public_key/page/history/history_controller.dart';

class HistoryPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _HistoryState();

}

class _HistoryState extends BasePageState<HistoryPage, HistoryController> {
  @override
  HistoryController controller = HistoryController();

  @override
  Widget get content {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Text("history"),
      ),
    );
  }

}