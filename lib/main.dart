import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_app/pages/home_page.dart';
import 'package:movie_app/pages/splash_page.dart';
import 'package:movie_app/providers/movie_provider.dart';
import 'package:movie_app/theme.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: blackColor,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness:Brightness.light,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MovieProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      ),
    );
  }
}
