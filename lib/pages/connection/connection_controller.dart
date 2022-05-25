import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ConnectionController extends GetxController{
  var textStyle = TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Color(0xff1E1E1E));

  List<InternetAddress>? hasInternet;
}
