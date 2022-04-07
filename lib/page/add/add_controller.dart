import 'package:ad_extension/ad_extension.dart';
import 'package:ad_mvc/ad_mvc.dart';
import 'package:flutter/material.dart';
import 'package:public_key/page/add/add_model.dart';
import 'package:public_key/page/add/data/generate_data.dart';
import 'package:public_key/page/add/views/add_generate_view.dart';
import 'package:public_key/page/add/views/add_type_view.dart';

class AddController extends BaseController<AddModel> {

  @override
  AddModel model = AddModel();

  @override
  bool get content => true;

  TextEditingController nameController = TextEditingController();
  TextEditingController accountController = TextEditingController();
  TextEditingController publicKeyController = TextEditingController();
  TextEditingController privateController = TextEditingController();

}

extension Data on AddController {

  String get typeItem => model.typeItem;
}

extension onTap on AddController {

  void onTypeTap() {
    showModalBottomSheet(
      context: context!,
      builder: (context) {
        return AddTypeView(
          callback: (item, index) {
            model.typeIndex = index;
            model.typeItem = item;
            notifyListeners();
          },
        );
      },
    );
  }


  void generatePublic(){
    // print("public");


    showModalBottomSheet(
      context: context!,
      builder: (context) {
        return AddGenerateView();
      },
    );
  }

  void generatePrivate(){
    print("privatte");

    GenerateData().generate(count: 2, isNumber: true, isSpecialCharacters: false, isUppercaseLetter: true);

  }

}

