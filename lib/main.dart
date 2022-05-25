import 'package:first/pages/homePage/home_page.dart';
import 'package:first/pages/oferta/oferta_page.dart';
import 'package:first/pages/reg_page/registration_page.dart';
import 'package:first/pages/reg_stage_first/Reg_first.dart';
import 'package:first/services/translatooon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Messages(),
      locale: Locale('kr','KR'),
      fallbackLocale: Locale('en ', 'US'), // установите резервную локализацию на случай если будет выбрана невалидный локализация.\
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  RegFirst(),
      routes: {
        HomePage.id:(context)=>HomePage(),
        RegFirst.id:(context)=>RegFirst(),
        Registration.id:(context)=>Registration(),
        Oferta.id:(context)=>Oferta(),

      },

    );
  }
}
