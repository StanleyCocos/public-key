

import 'package:ad_extension/ad_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marquee/marquee.dart';

class NetworkTips extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.w,
      color: ColorManager.hex(0xFFCB00),
      child: Marquee(
        text: "温馨提醒，本应用没有使用网络权限，且所有数据都是保存到本地，对数据一概不负任何责任!!!               ",
        style: TextStyle(
          fontSize: 24.sp,
          color: ColorManager.white,
        ),
      ),
    );
  }

}