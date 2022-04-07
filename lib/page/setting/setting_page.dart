import 'package:ad_extension/color_extension.dart';
import 'package:ad_mvc/ad_mvc.dart';
import 'package:ad_mvc/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:public_key/page/setting/setting_controller.dart';

class SettingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SettingState();
}

class _SettingState extends BasePageState<SettingPage, SettingController> {
  @override
  SettingController controller = SettingController();

  @override
  Widget? get navigation {
    return NavBar(
      title: "设置",
      elevation: 0.5,
    );
  }

  @override
  Widget get content {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (content, index) {
        return SettingListItem();
      },
    );
  }
}

class SettingListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 88.w,
      child: Column(
        children: [
          divider,
        ],
      ),
    );
  }

  Widget get divider {
    return Divider(
      height: 1,
      thickness: 1,
      indent: 50.w,
      color: ColorManager.hex(0xEEEEEE),
    );
  }
}
