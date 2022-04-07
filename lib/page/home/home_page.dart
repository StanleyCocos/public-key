import 'package:ad_extension/ad_extension.dart';
import 'package:ad_mvc/ad_mvc.dart';
import 'package:ad_mvc/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:public_key/page/home/home_controller.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends BasePageState<HomePage, HomeController> {
  @override
  HomeController controller = HomeController();

  @override
  Widget? get navigation {
    return NavBar(
      title: "首页",
      elevation: 0.5,
      actions: [
        GestureDetector(
          onTap: controller.onAddTap,
          child: Container(
            width: 88.w,
            height: 88.w,
            color: ColorManager.white,
            child: const Icon(Icons.add, size: 24),
          ),
        )
      ],
    );
  }

  @override
  Widget get content {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (content, index) {
        return HomeListItem();
      },
    );
  }
}

class HomeListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88.w,
      child: Column(
        children: [
          content.expand(),
          divider,
        ],
      ),
    );
  }

  Widget get content {
    return Row(
      children: [
        Container(
          width: 88.w,
          height: 88.w,
          color: ColorManager.random,
        ),

        Text("这是一条测试信息"),
      ],
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
