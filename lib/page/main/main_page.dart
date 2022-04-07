import 'package:ad_mvc/ad_mvc.dart';
import 'package:ad_extension/ad_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:public_key/page/main/main_controller.dart';

import 'main_model.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MainState();
}

class _MainState extends BasePageState<MainPage, MainController> {
  @override
  MainController controller = MainController();

  @override
  Widget? get navigation => null;

  @override
  Widget get content {
    return Column(
      children: [
        page.expand(),
        bar,
      ],
    );
  }

  Widget get page {
    return PageView.builder(
      controller: controller.pageController,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: controller.pages.length,
      itemBuilder: (content, index) {
        return controller.pages[index];
      },
    );
  }

  Widget get bar {
    return Container(
      width: double.infinity,
      height: ScreenUtil().bottomBarHeight + 50,
      color: ColorManager.random,
      child: Row(
        children: [
          MainPageBarItem(
            model: controller.bars[0],
            onTap: () => controller.onBarTap(0),
          ),
          MainPageBarItem(
            model: controller.bars[1],
            onTap: () => controller.onBarTap(1),
          ),
          MainPageBarItem(
            model: controller.bars[2],
            onTap: () => controller.onBarTap(2),
          ),
        ],
      ),
    );
  }
}

class MainPageBarItem extends StatelessWidget {
  final MainBarModel model;
  final GestureTapCallback? onTap;

  const MainPageBarItem({Key? key, required this.model, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return content.onTap(onTap).expand();
  }

  Widget get content {
    return Column(
      children: [
        vTitle,
        vIcon,
      ],
    );
  }

  Widget get vTitle {
    return Padding(
      padding: EdgeInsets.only(top: 10.w, bottom: 10.w),
      child: Text(model.title),
    );
  }

  Widget get vIcon {
    return Icon(Icons.pages);
  }
}
