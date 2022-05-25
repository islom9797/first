import 'package:first/custom/custom_Dialog.dart';
import 'package:first/custom/custom_button.dart';
import 'package:first/pages/add_bus/add_bus.dart';
import 'package:first/pages/add_weigh/add_weigh_view/add_weigh_view.dart';
import 'package:first/pages/bluetooth_connection/buetooth_device_scan.dart';
import 'package:first/pages/naver/clova_page.dart';
import 'package:first/pages/oferta/oferta_page.dart';
import 'package:first/pages/reg_page/registration_page.dart';
import 'package:first/services/Utils.dart';

import 'package:flutter/material.dart';


import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/list_notifier.dart';

import '../../custom/custom_input.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = "homePage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> list = [
    "삼성아파트",
    "효성아파트",
    "현대아파트",
    "테라아파트",
    "삼성아파트",
    "효성아파트",
    "현대아파트",
    "테라아파트"
  ];
  String? selectedValue;
  TextEditingController id = TextEditingController();
  TextEditingController pw = TextEditingController();
  TextEditingController dong = TextEditingController();
  TextEditingController ho = TextEditingController();
  TextEditingController key = TextEditingController();
  bool? checkboxValue;



  void initState() {
    super.initState();
    checkboxValue = false;


    // selectedValue=list[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        elevation: 0,
        leadingWidth: 0,
        bottomOpacity: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: const AssetImage(
                  "assets/images/home_page/homeBackground.png",
                ),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height - 80),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Container(

                        child: Text("래미안\n104동 110호", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
                      ),
                      SizedBox(height: 30,),

                      GestureDetector(
                        onTap: () async{

                          Get.to(()=>BluetoothScanView());
                        },
                        child: Container(
                          height: 148,
                          width: 148,

                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color:Utils.coloOrange,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ///네트워크 설정
                              Container(

                                  child: Text("스마트미러\n 네트워크\n 설정",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600))),
                              Container(
                                width: 31,
                                height: 50,
                                margin: EdgeInsets.only(left: 70),
                                child: SvgPicture.asset("assets/images/home_page/network.svg"),
                              )

                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      ///몸무게 설정
                      GestureDetector(
                        onTap: ()=>Get.to(AddWeighSelect()),
                        child: Container(
                          height: 197,
                          width: 148,

                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color:Utils.coloOrange,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(

                                  child: Text("스마트체중계\n 설정",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600))),
                              SizedBox(height: 50,),
                              Container(
                                width: 69,
                                height: 75,
                                margin: EdgeInsets.only(left: 70),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/home_page/weight.png")
                                    )
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),

                      ///로그아웃 logout
                      GestureDetector(
                        onTap: (){
                          Get.dialog(CustomDialog(
                            title: "로그아웃",
                            text: "정말 로그아웃 하시겠습니까?",
                            select1: "아니요",
                            select2: "네",
                            press: (){
                              Get.to(Registration());
                            },
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 30,left:30),
                          child: Row(
                            children: [
                              Text("로그아웃",style: TextStyle(color: Color.fromRGBO(2, 34, 97, 1),fontSize: 18),),
                              Container(child: SvgPicture.asset("assets/images/home_page/exit.svg"),),
                            ],
                          ),
                        ),
                      )

                    ],
                  )),
                  ///second part
                  Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            SizedBox(height: 80,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [

                                Container(
                                  width:38,
                                  height: 29,
                                  child: SvgPicture.asset("assets/images/home_page/FAQ.svg"),)
                              ],
                            ),
                            SizedBox(height: 30,),
                            ///버스 설정
                            GestureDetector(
                              onTap: (){

                                Get.to(addBus());
                              },
                              child: Container(
                                height: 197,
                                width: 148,

                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color:Utils.coloOrange,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(

                                        child: Text("버스 노선\n 설정",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600))),
                                    SizedBox(height: 50,),
                                    Container(
                                      width: 89,
                                      height: 75,
                                      margin: EdgeInsets.only(left: 50),
                                     decoration: BoxDecoration(
                                       image: DecorationImage(
                                         image: AssetImage("assets/images/home_page/busNoBg.png")
                                       )
                                     ),
                                     // child: SvgPicture.asset("assets/images/home_page/bus.svg",fit: BoxFit.fill),
                                    )

                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 30,),
                            ///네이버 설정
                            GestureDetector(
                              onTap: (){
                              Get.to(  WebViewApp());
                              },
                              child: Container(
                                height: 148,
                                width: 148,

                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color:Utils.coloOrange,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(

                                        child: Text("네이버\n 클로바서비스\n 설정",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600))),
                                    Container(
                                      width: 62,
                                      height: 49,
                                      margin: EdgeInsets.only(left: 70),
                                      child: SvgPicture.asset("assets/images/home_page/cloba.svg"),
                                    )

                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
