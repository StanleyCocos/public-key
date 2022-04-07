import 'package:ad_route/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:public_key/common/init.dart';
import 'package:public_key/page/main/main_page.dart';
import 'package:public_key/page/welcome/welcome_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await App.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(750, 1334),
      builder: () {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const MainPage(),
          navigatorObservers: [
            /// 路由管理初始化
            RouteManager()
              ..init(
                homeName: "MainPage",
                // options: [RouteOptions()],
              ),
          ],
          // home: const MainPage(),
        );
      },
    );
  }
}
