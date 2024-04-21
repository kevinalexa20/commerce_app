import 'package:commerce_app/config/routes/routes_provider.dart';
import 'package:commerce_app/config/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommerceApp extends ConsumerWidget {
  const CommerceApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _router = ref.watch(routesProvider);

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      useInheritedMediaQuery: true,
      minTextAdapt: true,
      child: MaterialApp.router(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        // home: const MyHomePage(title: 'Flutter Demo Home Page'),
        routerConfig: _router,
      ),
    );
  }
}