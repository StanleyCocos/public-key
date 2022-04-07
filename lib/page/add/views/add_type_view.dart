import 'package:ad_extension/ad_extension.dart';
import 'package:ad_route/ad_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddTypeView extends StatelessWidget {

  Function(String item, int index)? callback;

  final List<String> items = [
    "账号",
    "邮箱",
    "游戏",
  ];

  AddTypeView({Key? key, this.callback});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: ScreenUtil().bottomBarHeight),
      width: double.infinity,
      height: 240,
      color: ColorManager.white,
      child: content,
    );
  }

  Widget get content {
    return ListView.separated(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){
            RouteManager().pop();
            callback?.call(items[index], index);
          },
          child: Padding(
            padding: EdgeInsets.only(
              left: 32.w,
              top: 32.w,
              bottom: 32.w,
            ),
            child: Text(
              items[index],
              style: TextStyle(
                fontSize: 32.sp,
                color: ColorManager.gray33,
              ),
            ),
          ),
        );
      },
      separatorBuilder: (content, index) {
        return Divider(
          height: 1,
          thickness: 1,
          indent: 32.w,
          color: ColorManager.grayEE,
        );
      },
    );
  }
}
