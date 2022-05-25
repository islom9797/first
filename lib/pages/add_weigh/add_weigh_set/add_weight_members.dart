import 'package:first/services/Utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../custom/custom_input.dart';
import 'add_weight_member_controller.dart';

class addWigthMembers extends StatelessWidget {
  addWigthMembers({Key? key}) : super(key: key);

  TextEditingController nickname = TextEditingController();
  TextEditingController height = TextEditingController();
  TextEditingController birth = TextEditingController();

  AddWeigtMembersController addWeightMemberController =
      Get.put(AddWeigtMembersController());

  saveMemberInfo() {}

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            title: Text(
              "사용자 편집",
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.black,
              ),
              onPressed: () => Get.back(),
            ),
            backgroundColor: Colors.transparent,
          ),
          body: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      width: 60,
                      child: Text(
                        "별칭",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )),
                  CustomInput(
                    controller: nickname,
                    text: "한글/영문 입력,특수문자 불가",
                    press: () {},
                    width: MediaQuery.of(context).size.width / 3 * 2,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      width: 60,
                      child: Text(
                        "키",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )),
                  CustomInput(
                    controller: height,
                    text: "숫자만 입력,cm단위",
                    press: () {},
                    width: MediaQuery.of(context).size.width / 3 * 2,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      width: 60,
                      child: Text(
                        "출생년도",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )),
                  CustomInput(
                    controller: birth,
                    text: "숫자만 입력(에 :200)",
                    press: () {},
                    width: MediaQuery.of(context).size.width / 3 * 2,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      width: 75,
                      child: Text(
                        "성별",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )),
                  GestureDetector(
                    onTap: () {
                      addWeightMemberController.boxFirstChecked.value = true;
                    },
                    child: Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: addWeightMemberController
                                      .boxFirstChecked.value
                                  ? Color.fromRGBO(142, 142, 147, 1)
                                  : Utils.colorGrey,
                              width: 1),
                          color: addWeightMemberController.boxFirstChecked.value
                              ? Colors.white
                              : Utils.colorGrey,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.check_outlined,
                              color: addWeightMemberController
                                      .boxFirstChecked.value
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "남자",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      addWeightMemberController.boxFirstChecked.value = false;
                    },
                    child: Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              width: 1,
                              color: addWeightMemberController
                                      .boxFirstChecked.value
                                  ? Utils.colorGrey
                                  : Color.fromRGBO(142, 142, 147, 1)),
                          color: addWeightMemberController.boxFirstChecked.value
                              ? Utils.colorGrey
                              : Colors.white,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.check_outlined,
                              color: addWeightMemberController
                                      .boxFirstChecked.value
                                  ? Colors.grey
                                  : Colors.black,
                            ),
                            Text(
                              "여자",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Container(
                    width: 101,
                    height: 54,
                    color: Utils.colorGrey,
                    child: MaterialButton(
                      // backgroundColor:Utils.colorGrey,
                      elevation: 0,

                      onPressed: () {
                        nickname.text = "";
                        birth.text = "";
                        height.text = "";
                      },
                      child: Text(
                        "초기화",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: double.infinity,
                      height: 54,
                      color: Utils.coloOrange,
                      child: MaterialButton(
                          onPressed: ()  {
                            height.text.length>1 &&nickname.text.length>1 &&birth.text.length>1?   WidgetsBinding.instance.addPostFrameCallback((_) async {
                              bool i=  await Utils.writeData(height.text, nickname.text, birth.text, addWeightMemberController.boxFirstChecked.value.toString());
                            await  Utils.readData();

                              i?Get.back():Get.defaultDialog(title: "Error");

                            }):Get.defaultDialog(title: "Error",middleText: "please enter all parameters");


                          },
                          child: Text("저장",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center)),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
