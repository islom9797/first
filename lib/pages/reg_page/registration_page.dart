import 'package:first/custom/custom_Dialog.dart';
import 'package:first/custom/custom_button.dart';
import 'package:first/pages/homePage/home_page.dart';
import 'package:first/pages/oferta/oferta_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../custom/custom_input.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);
  static final String id = "RegPage";

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  List<String> list = [
    "삼성아파트",
    "효성아파트",
    "현대아파트",
    "테라아파트",
  ];
  List<String> list2 = [
    "삼성아파트3",
    "효성아파트",
    "현대아파트5",
    "테라아파트",
  ];
  String? selectedValue;
  String? selectedValue2;
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
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - 80),
          child: IntrinsicHeight(
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                        width: 60,
                        child: Text(
                          "아파트",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        )),
                    Container(
                      height: 59,
                      width: MediaQuery.of(context).size.width / 3 * 2,
                      margin: EdgeInsets.only(left: 15, right: 15),
                      padding: EdgeInsets.only(left: 25),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(243, 243, 243, 1),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 1,
                                spreadRadius: 0,
                                offset: Offset(0, 2),
                                color: Colors.black.withOpacity(0.2)),
                          ]),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          hint: Text(
                            "선택",
                            style: TextStyle(
                                color: Color(
                                  0xffb4b4b4,
                                ),
                                fontSize: 20),
                          ),
                          value: selectedValue,
                          icon: Container(
                            margin: EdgeInsets.only(right: 15),
                            child: Icon(Icons.keyboard_arrow_down_outlined),
                          ),
                          items: list
                              .map((item) => DropdownMenuItem<String>(
                                    child: Text(
                                      item,
                                      style: TextStyle(),
                                    ),
                                    value: item,
                                  ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              this.selectedValue = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                        width: 60,
                        child: Text(
                          "단지",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        )),
                    Container(
                      height: 59,
                      width: MediaQuery.of(context).size.width / 3 * 2,
                      margin: EdgeInsets.only(left: 15, right: 15),
                      padding: EdgeInsets.only(left: 25),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(243, 243, 243, 1),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 1,
                                spreadRadius: 0,
                                offset: Offset(0, 2),
                                color: Colors.black.withOpacity(0.2)),
                          ]),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          hint: Text(
                            "선택",
                            style: TextStyle(
                                color: Color(0xffb4b4b4), fontSize: 20),
                          ),
                          value: selectedValue2,
                          icon: Container(
                            margin: EdgeInsets.only(right: 15),
                            child: Icon(Icons.keyboard_arrow_down_outlined),
                          ),
                          items: list2
                              .map((item) => DropdownMenuItem<String>(
                                    child: Text(
                                      item,
                                      style: TextStyle(),
                                    ),
                                    value: item,
                                  ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              this.selectedValue2 = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                        width: 60,
                        child: Text(
                          "동",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        )),
                    CustomInput(
                      controller: dong,
                      text: "동 입력",
                      press: () {},
                      width: MediaQuery.of(context).size.width / 3 * 2,
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                        width: 60,
                        child: Text(
                          "호",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        )),
                    CustomInput(
                      width: MediaQuery.of(context).size.width / 3 * 2,
                      controller: ho,
                      text: "호 입력",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                        width: 60,
                        child: Text(
                          "인증키",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        )),
                    CustomInput(
                      controller: key,
                      text: "인증키 입력(숫자 4자리)",
                      press: () {},
                      width: MediaQuery.of(context).size.width / 3 * 2,
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Spacer(),
                Container(
                  height: 25,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(Icons.question_mark, size: 17)),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "인증키는 '스마트미러 매뉴얼'에 포함되어 있습니다.",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(153, 153, 153, 1)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 24,
                          width: 24,
                          child: Checkbox(
                            value: checkboxValue,
                            tristate: false,
                            onChanged: (value) {
                              print(value);
                              setState(() {
                                this.checkboxValue = value;
                              });
                              // Navigator.pushReplacementNamed(context, Oferta.id);
                            },
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                          )),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Oferta.id);
                          },
                          child: Text(
                            "스마트미러 설정 앱의 이용을 위해 개인정보 수집 및 이용 과 서비스이용 약관에 모두 동의합니다. (필수)",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                CustomButton(
                  press: () {
                    ho.text.length > 5 || selectedValue == false
                        ? showDialog(
                            context: context,
                            builder: (_) => CustomDialog(
                                  title: "입주민 인증",
                                  text:"거주지 정보와 인증키가 일치하지 않습니다. 입력하신 내용을 다시 확인해 주세요.",
                                  select1: "취소",
                                  select2: "확인",
                                  press: () {
                                    Get.to(Registration());
                                  },
                                )
                            //     AlertDialog(
                            //   title:Text("입주민 인증",textAlign: TextAlign.center,style: TextStyle(color: Color.fromRGBO(2, 34, 97, 1),fontWeight: FontWeight.bold,fontSize: 16),) ,
                            //   content:
                            //       Container(
                            //           padding:EdgeInsets.only(left: 10,right: 10),
                            //           child: Text("거주지 정보와 인증키가 일치하지 않습니다. 입력하신 내용을 다시 확인해 주세요.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),))
                            //    ,
                            //   actions: [
                            //    SizedBox(
                            //
                            //        child: ElevatedButton(onPressed: (){}, child: Text("exit"),)),
                            //     Container(width: 100,color: Colors.grey,height: 70,),
                            //
                            //
                            //     ElevatedButton(onPressed: (){}, child: Text("exit")),
                            //   ],
                            //
                            // )

                            )
                        : Navigator.pushReplacementNamed(context, HomePage.id);
                    //Navigator.pushReplacementNamed(context, RegLast.id);
                  },
                  text: "입주민 인증",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
