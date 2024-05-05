import 'package:apis_final_form_testing/core/Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApiFinalFormTesting extends StatelessWidget {
  final AppRoutes appRoutes;
  const ApiFinalFormTesting({super.key, required this.appRoutes});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(useMaterial3: true),
          onGenerateRoute: appRoutes.onGeneratingRoutes,
        );
      },
    );
  }
}
