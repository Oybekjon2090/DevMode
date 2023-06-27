import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work/presentation/view/pages/home/home_page.dart';
import 'package:provider/provider.dart';
import '../application/auth_provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
      ],
      child: ScreenUtilInit(
          designSize: const Size(1440, 1024),
          builder: (BuildContext context, Widget? child) {
            return const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: HomePage(),
            );
          }),
    );
  }
}
