import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work/application/main_provider.dart';
import 'package:provider/provider.dart';
import 'view/pages/main/main_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MainProvider()),
      ],
      child: ScreenUtilInit(
          designSize: const Size(1440, 1024),
          builder: (BuildContext context, Widget? child) {
            return const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: SideBar(),
            );
          }),
    );
  }
}
