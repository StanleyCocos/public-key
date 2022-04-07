

import 'package:ad_cache/ad_cache.dart';
import 'package:ad_cache/db/column.dart';

class AccountTable extends BaseTableModel {
  @override
  BaseTableModel copy() => AccountTable();

  @override
  Map<String, BaseColumn> get map => {
    "id": id,
    "type": type,
    "name": name,
    "account": account,
    "publicKey": publicKey,
    "privateKey": privateKey,
    "remark": remark,
  };

  STInt type = STInt();
  STText name = STText();
  STText account = STText();
  STText publicKey = STText();
  STText privateKey = STText();
  STText remark = STText();

}