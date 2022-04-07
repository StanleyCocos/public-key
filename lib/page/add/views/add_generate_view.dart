import 'package:ad_extension/ad_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddGenerateView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500,
      color: ColorManager.white,
      padding: EdgeInsets.only(bottom: ScreenUtil().bottomBarHeight),
      child: Column(
        children: [
          navigation,
          const Divider(thickness: 1),
          count,
          number,
          lowerLetter,
          uppercaseLetter,
          specialCharacters,
          generate,
        ],
      ),
    );
  }

  Widget get navigation {
    return Container(
      width: double.infinity,
      height: 100.w,
      color: ColorManager.white,
      alignment: Alignment.center,
      child: Text(
        "选择生成的格式",
        style: TextStyle(
          fontSize: 32.sp,
          fontWeight: FontWeight.w500,
          color: ColorManager.gray33,
        ),
      ),
    );
  }

  Widget get count {
    return Container(
      width: double.infinity,
      height: 100.w,
      child: Row(
        children: [
          32.w.paddingL,
          Container(
            width: 180.w,
            height: double.infinity,
            alignment: Alignment.centerLeft,
            child: Text(
              "长度: 8位",
              style: TextStyle(
                fontSize: 32.sp,
                color: ColorManager.gray33,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                // 32.w.paddingL,
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 80.w,
                    decoration: BoxDecoration(
                      color: ColorManager.theme,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "+",
                      style: TextStyle(
                        fontSize: 44.sp,
                        color: ColorManager.white,
                      ),
                    ),
                  ),
                ),
                32.w.paddingR,
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 80.w,
                    decoration: BoxDecoration(
                      color: ColorManager.theme,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "-",
                      style: TextStyle(
                        fontSize: 44.sp,
                        color: ColorManager.white,
                      ),
                    ),
                  ),
                ),
                32.w.paddingR,
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget get number {
    return Container(
      width: double.infinity,
      height: 100.w,
      color: ColorManager.white,
      child: Row(
        children: [
          32.w.paddingL,
          Container(
            width: 180.w,
            height: double.infinity,
            alignment: Alignment.centerLeft,
            child: Text(
              "数字: ",
              style: TextStyle(
                fontSize: 32.sp,
                color: ColorManager.gray33,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          CupertinoSwitch(
            value: true,
            onChanged: (bool value) {},
            // value: this.valueb,valueb
            // onChanged: (bool value) {
            //   setState(() {
            //     this.valueb = value;
            //   });
            // },
          ),
        ],
      ),
    );
  }

  Widget get lowerLetter {
    return Container(
      width: double.infinity,
      height: 100.w,
      color: ColorManager.white,
      child: Row(
        children: [
          32.w.paddingL,
          Container(
            width: 180.w,
            height: double.infinity,
            alignment: Alignment.centerLeft,
            child: Text(
              "小写字母: ",
              style: TextStyle(
                fontSize: 32.sp,
                color: ColorManager.gray33,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          CupertinoSwitch(
            value: true,
            onChanged: (bool value) {},
            // value: this.valueb,valueb
            // onChanged: (bool value) {
            //   setState(() {
            //     this.valueb = value;
            //   });
            // },
          ),
        ],
      ),
    );
  }

  Widget get uppercaseLetter {
    return Container(
      width: double.infinity,
      height: 100.w,
      color: ColorManager.white,
      child: Row(
        children: [
          32.w.paddingL,
          Container(
            width: 180.w,
            height: double.infinity,
            alignment: Alignment.centerLeft,
            child: Text(
              "大写字母: ",
              style: TextStyle(
                fontSize: 32.sp,
                color: ColorManager.gray33,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          CupertinoSwitch(
            value: true,
            onChanged: (bool value) {},
            // value: this.valueb,valueb
            // onChanged: (bool value) {
            //   setState(() {
            //     this.valueb = value;
            //   });
            // },
          ),
        ],
      ),
    );
  }

  Widget get specialCharacters {
    return Container(
      width: double.infinity,
      height: 100.w,
      color: ColorManager.white,
      child: Row(
        children: [
          32.w.paddingL,
          Container(
            width: 180.w,
            height: double.infinity,
            alignment: Alignment.centerLeft,
            child: Text(
              "特殊字符: ",
              style: TextStyle(
                fontSize: 32.sp,
                color: ColorManager.gray33,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          CupertinoSwitch(
            value: true,
            onChanged: (bool value) {},
            // value: this.valueb,valueb
            // onChanged: (bool value) {
            //   setState(() {
            //     this.valueb = value;
            //   });
            // },
          ),
        ],
      ),
    );
  }

  Widget get generate {
    return Container(
      width: double.infinity,
      height: 100.w,
      margin: EdgeInsets.all(32.w),
      decoration: BoxDecoration(
        color: ColorManager.theme,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      alignment: Alignment.center,
      child: Text(
        "生成",
        style: TextStyle(color: ColorManager.white, fontSize: 32.sp),
      ),
    );
  }
}
