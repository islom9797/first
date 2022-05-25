import 'package:first/pages/add_weigh/add_weigh_set/add_weight_members.dart';
import 'package:first/services/Utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AddWeighSelect extends StatelessWidget {
  const AddWeighSelect({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "스마트 체증계 설정",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
          onPressed: () => Get.back(),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                ///user 1
                GestureDetector(
                  onTap: ()=>Get.to(addWigthMembers()),
                  child: Container(
                    height: 148,
                    width: Get.width / 5 * 2.1,
                    color: Utils.colorGrey,
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 37),
                            height: 36,
                            width: 36,
                            child: SvgPicture.asset(
                              "assets/images/weigh_page/men.svg",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text("사용1"),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ///user2
                GestureDetector(
                  child: Container(
                    height: 148,
                    width: Get.width / 5 * 2.1,
                    color: Utils.colorGrey,
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 37),
                            height: 36,
                            width: 36,
                            child: SvgPicture.asset(
                              "assets/images/weigh_page/icn_women.svg",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text("사용2"),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                ///user 3
                GestureDetector(
                  child: Container(
                    height: 148,
                    width: Get.width / 5 * 2.1,
                    color: Utils.colorGrey,
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 37),
                            height: 36,
                            width: 36,
                            child: SvgPicture.asset(
                              "assets/images/weigh_page/men.svg",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text("사용3"),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ///User4
                GestureDetector(
                  child: Container(
                    height: 148,
                    width: Get.width / 5 * 2.1,
                    color: Utils.colorGrey,
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 37),
                            height: 36,
                            width: 36,
                            child: SvgPicture.asset(
                              "assets/images/weigh_page/icn_women.svg",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text("사용4"),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            ///line which start whivh question Mark
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
                  Flexible(
                    child: Text(
                      "스마트체중계 설정은 최대 4명까지 저장할 수 있습니다",
                      overflow: TextOverflow.clip,
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 12,

                          color: Color.fromRGBO(153, 153, 153, 1)),
                    ),
                  ),

                ],
              ),
            ),
            Spacer(),
            ///weigher icon in the end
            Container(
              height: 69,
              width: 75,
              margin: EdgeInsets.only(left: Get.width/5*3),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/home_page/weight.png")
                )
              ),
             // child: SvgPicture.asset("assets/images/home_page/weigher.svg"),
            )

          ],
        ),
      ),
    );
  }
}
