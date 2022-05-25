import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Utils {
  // static Color colorRed = HexColor.fromHex("D80027");
  static Color colorGreen = const Color(0xff60BA62);
  static Color colorBackground = const Color(0xffF6F6F6);
  static Color splashColorBackground = const Color.fromRGBO(2, 34, 97, 1);
  static Color colorGrey = const Color.fromRGBO(243, 243, 243, 1);
  static Color colorRed = const Color(0xfff84343);
  static Color greyTextColor = const Color(0xffB2B0B0);
  static Color whiteCardTextColor = const Color(0xffFFFFFF);
  static Color textColor = Color(0xff1E1E1E);
  static Color colorYellow = Color(0xffFFe063);
  static Color coloOrange = Color.fromRGBO(255, 224, 99, 1);
  static Color colorBeige = Color(0xff7A869A);
  static TextStyle blockTitle = TextStyle(color: Colors.blue);

  static writeData(String height, String nickname, String birth, String sex) async {
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();
  bool a=  await prefs.setString('height', height);
    bool b=  await prefs.setString('birth', birth);
    bool c=   await prefs.setString('nickname', nickname);
    bool d=  await prefs.setString('sex', sex);
    bool e=a&&b&&c&&d?true:false;
 if(e==true){
   return true;
 }else{
   writeData(height, nickname, birth, sex);

 }
return true;
  }
 static readData() async {
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();
    List list=[];
    list.add(await prefs.getString('height', ));
    list.add(await prefs.getString('birth', ));
    list.add(await prefs.getString('nickname', ));
    list.add(await prefs.getString('sex', ));
    print("List is $list");

  }

  static removeData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('height' );
    await prefs.remove('birth');
    await prefs.remove('nickname');
    await prefs.remove('sex');

  }
}
