// import 'dart:async';
// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../../connectivity_status_controller.dart';
//
// class ConnectionPage extends StatefulWidget {
//   const ConnectionPage({Key? key}) : super(key: key);
//
//   @override
//   _ConnectionPageState createState() => _ConnectionPageState();
// }
//
// class _ConnectionPageState extends State<ConnectionPage> {
//   final ConnectionController connectionController = Get.put(ConnectionController());
//   final ConnectivityStatusController connectivityController = Get.put(ConnectivityStatusController());
//   //Get.find();
//
//   // final connectivityStatusController = Get.put(ConnectivityStatusController);
//   //   final late hasInternet;
//   //   final late hasTasIx;
//   Timer? checkInternetInterval;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     checkInternetInterval = Timer.periodic(Duration(seconds: 5), (timer) {
//       checkConnection();
//     });
//   }
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     checkInternetInterval?.cancel();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MediaQuery(
//       data: MediaQuery.of(context).copyWith(textScaleFactor: 1,boldText: false),
//       child: WillPopScope(
//         onWillPop: ()async{
//           return false;
//         },
//         child: Scaffold(
//           backgroundColor: Utils.colorBackground,
//           resizeToAvoidBottomInset: false,
//           body: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(),
//               SizedBox(
//                 height: 240,
//               ),
//               Image.asset(
//                 "assets/connection_error/connection_error.png",
//                 width: 167,
//                 height: 167,
//                 fit: BoxFit.cover,
//               ),
//               Container(
//                 margin: EdgeInsets.only(left: 79, right: 78, top: 42),
//                 child: Text(
//                   "check_net".tr,
//                   textAlign: TextAlign.center,
//                   style: connectionController.textStyle,
//                 ),
//               ),
//               Spacer(),
//               Container(
//                 margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//                 child: SafeArea(
//                   top: false,
//                   bottom: true,
//                   child: CustomButton(
//                     isGreen: true,
//                     isRed: false,
//                     press: () {
//                       connectivityController.checkConnectivity();
//                       // print(connectivityController.status.value);
//                       // checkConnection();
//                       print('Press');
//                     },
//                     text: "retry".tr,
//                     textStyle: connectionController.textStyle
//                         .copyWith(fontSize: 16.0, color: Colors.white),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   checkConnection() async {
//     try {
//       var hasInternet = await InternetAddress.lookup("google.com");
//       print("hasInternet ${hasInternet}");
//       var hasTasIx = await InternetAddress.lookup("www.uz");
//       print("hasTasIx ${hasTasIx}");
//
//       if (connectivityController.status.value != ConnectivityResult.none) {
//         if ((hasInternet.isNotEmpty && hasInternet[0].rawAddress.isNotEmpty) ||
//             (hasTasIx.isNotEmpty && hasTasIx[0].rawAddress.isNotEmpty)) {
//           Get.back();
//           // connectivityController.status.value = result;
//         } else {
//           Get.to(()=>ConnectionPage(),
//               transition: Transition.cupertino,duration: Duration(milliseconds: 400));
//           // status.value = ConnectivityResult.none;
//         }
//       }
//     } catch (Exception) {
//       Get.to(()=>ConnectionPage(),
//           transition: Transition.cupertino,duration: Duration(milliseconds: 400));
//       // status.value = ConnectivityResult.none;
//       print(Exception);
//     }
//   }
// }
//
