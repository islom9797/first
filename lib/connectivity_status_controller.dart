// import 'dart:io';
// // import 'dart:js';
//
// import 'package:connectivity/connectivity.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:get/get.dart';
// import 'package:mobile/pages/connection_error/connection.dart';
// // import 'package:flutter/material.dart';
//
// class ConnectivityStatusController extends GetxController {
//   var status = ConnectivityResult.wifi.obs;
//   var subscription;
//
//   // ConnectivityStatusController();
//
//   Future<void> checkConnectivity() async {
//     final hasInternet;
//     final hasTasIx;
//     try {
//       print(DateTime.now());
//       hasInternet = await InternetAddress.lookup("google.com").timeout(Duration(milliseconds: 5000));
//       print("hasInternet ${hasInternet}");
//       hasTasIx = await InternetAddress.lookup("www.uz").timeout(Duration(milliseconds: 5000));
//       print("hasTasIx ${hasTasIx}");
//       print(DateTime.now());
//       if ((hasInternet.isNotEmpty && hasInternet[0].rawAddress.isNotEmpty) ||
//           (hasTasIx.isNotEmpty && hasTasIx[0].rawAddress.isNotEmpty)) {
//         //   status.value = result;
//       } else {
//         Get.to(ConnectionPage());
//         status.value = ConnectivityResult.none;
//       }
//     } catch (Exception) {
//       Get.to(ConnectionPage());
//       status.value = ConnectivityResult.none;
//       print(Exception);
//     }
//
//     print("in check conncetivity");
//     subscription = Connectivity()
//         .onConnectivityChanged
//         .listen((ConnectivityResult result) async {
//       status.value = result;
//       print("in listen result $result");
//       final hasInternet;
//       final hasTasIx;
//       try {
//         print(DateTime.now());
//         hasInternet = await InternetAddress.lookup("google.com").timeout(Duration(milliseconds: 5000));
//         print("hasInternet ${hasInternet}");
//         hasTasIx = await InternetAddress.lookup("www.uz").timeout(Duration(milliseconds: 5000));
//         print("hasTasIx ${hasTasIx}");
//         print(DateTime.now());
//         if ((hasInternet.isNotEmpty && hasInternet[0].rawAddress.isNotEmpty) ||
//             (hasTasIx.isNotEmpty && hasTasIx[0].rawAddress.isNotEmpty)) {
//           status.value = result;
//         } else {
//           Get.to(ConnectionPage());
//           status.value = ConnectivityResult.none;
//         }
//       } catch (Exception) {
//         Get.to(ConnectionPage());
//         status.value = ConnectivityResult.none;
//         print(Exception);
//       }
//       // print("hasTasIx ${hasTasIx[0].rawAddress}");
//
//       // // Got a new connectivity status!
//       print("result: $result");
//       // print("hasInternet: $hasInternet");
//     });
//     //
//   }
//
//   void cancelSubscription() {
//     print("cancelling");
//     subscription.cancel();
//   }
// }
