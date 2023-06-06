import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project/views/splash/view.dart';

import 'core/cache_helper.dart';
import 'core/helper_methods.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  await CacheHelper.init();
  //CacheHelper.clear();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //return MaterialApp(
    //theme: ThemeData(primarySwatch: Colors.cyan),
    //debugShowCheckedModeBanner: false,
    //home: const MyApp1(),
    //);
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      //minTextAdapt: true,
      //splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorKey: navigatorKey,
          title: 'Product App',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.green,
            //textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: const MyApp1(),
    );
  }
}

class MyApp1 extends StatelessWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
      /*home: PageView(
    scrollDirection: Axis.vertical,
    children: const [
      CarsScreen(),
      ProductsScreen(),
      MobilesScreen(),
      TelevisionsScreen(),
      ClothesScreen(),
      BagsAndWatchesScreen(),
      GoldsAndJewelleries(),
      TablesScreen(),
    ],
  ),*/
    );
  }
}
