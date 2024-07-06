import 'package:circle_sync/core/routing/app_router.dart';
import 'package:circle_sync/core/routing/routes.dart';
import 'package:circle_sync/features/login/ui/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleSyncApp extends StatelessWidget {
   final AppRouter appRouter;
  const CircleSyncApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      
      designSize: const Size(375, 812),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
         onGenerateRoute: appRouter.generateRoute,
              initialRoute: Routes.login,
            )
      );
  }
}
