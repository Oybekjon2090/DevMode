import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'view/pages/main/main_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1440, 1024),
        builder: (BuildContext context, Widget? child) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SideBar(),
          );
        });
  }
}
