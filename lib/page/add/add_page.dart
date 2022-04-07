import 'package:ad_extension/ad_extension.dart';
import 'package:ad_mvc/ad_mvc.dart';
import 'package:ad_mvc/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:public_key/global/widgets/network_tips.dart';

import 'add_controller.dart';

class AddPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AddState();
}

class _AddState extends BasePageState<AddPage, AddController> {
  @override
  AddController controller = AddController();

  @override
  Color get backgroundColor => ColorManager.grayEE;

  @override
  Widget? get navigation {
    return NavBar(
      title: "添加秘钥",
      elevation: 0.4,
    );
  }

  @override
  Widget get content {
    return Column(
      children: [
        NetworkTips(),
        Expanded(child: Padding(
          padding: EdgeInsets.only(left: 32.w, right: 32.w, top: 32.w),
          child: Column(
            children: [
              type,
              32.w.paddingT,
              title,
              32.w.paddingT,
              account,
              32.w.paddingT,
              publicKey,
              32.w.paddingT,
              privateKey,
              32.w.paddingT,
              remark,
              32.w.paddingT,
              image,
              32.w.paddingT,
              add,
            ],
          ),
        ),),

      ],
    );
  }

  Widget get type {
    return GestureDetector(
      onTap: ()=> controller.onTypeTap(),
      child: Container(
        width: double.infinity,
        height: 100.w,
        decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: [
            16.w.paddingL,
            Container(
              height: 100.w,
              alignment: Alignment.centerLeft,
              child: Text(
                "类型:",
                style: TextStyle(
                  fontSize: 32.sp,
                  color: ColorManager.gray99,
                ),
              ),
            ),
            16.w.paddingL,
            Expanded(
              child: Container(
                width: double.infinity,
                height: 100.w,
                alignment: Alignment.centerLeft,
                child: Text(
                  controller.typeItem,
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w500,
                    color: ColorManager.gray33,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 100.w,
              height: 100.w,
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: ColorManager.hex(0x999999),
                size: 32.w,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget get title {
    return Container(
      width: double.infinity,
      height: 100.w,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child:  Row(
        children: [
          16.w.paddingR,
          Container(
            height: 100.w,
            alignment: Alignment.centerLeft,
            child: Text(
              "名称:",
              style: TextStyle(
                fontSize: 32.sp,
                color: ColorManager.gray99,
              ),
            ),
          ),
          16.w.paddingL,
          Expanded(
            child: TextField(
              style: TextStyle(
                fontSize: 32.sp,
                color: ColorManager.gray33,
              ),
              decoration: InputDecoration(
                border:InputBorder.none,
                hintText: "请输入名称",
                hintStyle: TextStyle(
                  fontSize: 32.sp,
                  color: ColorManager.gray99,
                ),
              ),
            ),
          ),

          // TextField(),
        ],
      ),);
  }

  Widget get account {
    return Container(
        width: double.infinity,
        height: 100.w,
        decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child:  Row(
          children: [
            16.w.paddingR,
            Container(
              height: 100.w,
              alignment: Alignment.centerLeft,
              child: Text(
                "账号:",
                style: TextStyle(
                  fontSize: 32.sp,
                  color: ColorManager.gray99,
                ),
              ),
            ),
            16.w.paddingL,
            Expanded(
              child: TextField(
                style: TextStyle(
                  fontSize: 32.sp,
                  color: ColorManager.gray33,
                ),
                decoration: InputDecoration(
                  border:InputBorder.none,
                  hintText: "请输入账号",
                  hintStyle: TextStyle(
                    fontSize: 32.sp,
                    color: ColorManager.gray99,
                  ),
                ),
              ),
            ),

            // TextField(),
          ],
        ),);
  }

  Widget get publicKey {
    return Container(
      width: double.infinity,
      height: 100.w,
      child: Row(
        children: [
          Expanded(child: Container(
            width: double.infinity,
            height: 100.w,
            decoration: BoxDecoration(
              color: ColorManager.white,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child:  Row(
              children: [
                16.w.paddingR,
                Container(
                  height: 100.w,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "公钥:",
                    style: TextStyle(
                      fontSize: 32.sp,
                      color: ColorManager.gray99,
                    ),
                  ),
                ),
                16.w.paddingL,
                Expanded(
                  child: TextField(
                    style: TextStyle(
                      fontSize: 32.sp,
                      color: ColorManager.gray33,
                    ),
                    decoration: InputDecoration(
                      border:InputBorder.none,
                      hintText: "请输入账号",
                      hintStyle: TextStyle(
                        fontSize: 32.sp,
                        color: ColorManager.gray99,
                      ),
                    ),
                  ),
                ), // TextField(),
              ],
            ),)),
          16.w.paddingR,
          GestureDetector(
            onTap: controller.generatePublic,
            child: Container(
              width: 160.w,
              height: double.infinity,
              margin: EdgeInsets.all(5.w),
              decoration: BoxDecoration(
                color: ColorManager.theme,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              alignment: Alignment.center,
              child: Text("自动生成", style: TextStyle(color: ColorManager.white, fontSize: 24.sp),),
            ),
          )
        ],
      ),
    );
  }

  Widget get privateKey {
    return Container(
      width: double.infinity,
      height: 100.w,
      child: Row(
        children: [
          Expanded(child: Container(
            width: double.infinity,
            height: 100.w,
            decoration: BoxDecoration(
              color: ColorManager.white,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child:  Row(
              children: [
                16.w.paddingR,
                Container(
                  height: 100.w,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "私钥:",
                    style: TextStyle(
                      fontSize: 32.sp,
                      color: ColorManager.gray99,
                    ),
                  ),
                ),
                16.w.paddingL,
                Expanded(
                  child: TextField(
                    style: TextStyle(
                      fontSize: 32.sp,
                      color: ColorManager.gray33,
                    ),
                    decoration: InputDecoration(
                      border:InputBorder.none,
                      hintText: "请输入私钥(选填)",
                      hintStyle: TextStyle(
                        fontSize: 32.sp,
                        color: ColorManager.gray99,
                      ),
                    ),
                  ),
                ), // TextField(),
              ],
            ),)),
          16.w.paddingR,
          GestureDetector(
            onTap: controller.generatePrivate,
            child: Container(
              width: 160.w,
              height: double.infinity,
              margin: EdgeInsets.all(5.w),
              decoration: BoxDecoration(
                color: ColorManager.theme,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              alignment: Alignment.center,
              child: Text("自动生成", style: TextStyle(color: ColorManager.white, fontSize: 24.sp),),
            ),
          )
        ],
      ),
    );
  }

  Widget get remark {
    return Container(
      width: double.infinity,
      height: 200.w,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      child: TextField(
        style: TextStyle(
          fontSize: 32.sp,
          color: ColorManager.gray33,
        ),
        decoration: InputDecoration(
          border:InputBorder.none,
          hintText: "添加备注(选填)",
          hintStyle: TextStyle(
            fontSize: 32.sp,
            color: ColorManager.gray99,
          ),
        ),
      ),
    );
  }

  Widget get image {
    return Container(
      width: double.infinity,
      color: ColorManager.random,

    );
  }

  Widget get add {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: ColorManager.theme,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      alignment: Alignment.center,
      child: Text(
        "保 存",
        style: TextStyle(
          fontSize: 32.sp,
          color: ColorManager.white,
        ),
      ),
    );
  }
}
