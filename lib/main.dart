import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:small_home_application/res/my_colors.dart';
import 'package:small_home_application/utils/route/routes.dart';
import 'package:small_home_application/utils/route/routes_name.dart';
import 'package:small_home_application/view_model/bottom_nav_bar_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> BottomNavBarViewModel()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primaryColor: MyColors.main2Color,
          secondaryHeaderColor: MyColors.mainColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: MyColors.main2Color,
          ),
          canvasColor: MyColors.backGroundApplicationColor,
        ),
        initialRoute:  RoutesName.parentScreen,
        onGenerateRoute:  Routes.genarateRoute,
      ),
    );
  }


}

