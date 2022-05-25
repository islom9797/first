import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class addBus extends StatefulWidget {
  const addBus({Key? key}) : super(key: key);

  @override
  State<addBus> createState() => _addBusState();
}

class _addBusState extends State<addBus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("버스 노선 설정",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,),
          onPressed: (){

            Get.back();
          },
        ),
      ),
      body:Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Container(
              height: 124,
              width: double.infinity,
              color: Color.fromRGBO(243, 243, 243, 1),
              margin: EdgeInsets.only(right: 29,left: 29),
              padding: EdgeInsets.only(left: 29),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    padding: EdgeInsets.only(top: 3),
                    height:20,
                    width: 33,
                    color: Colors.grey,
                    child: Text("추가",style: TextStyle(color: Colors.white,fontSize: 13),textAlign: TextAlign.center),),
                  Padding(
                    padding: EdgeInsets.only(right: 9,top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("노선 버스 추가",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 13,),padding: EdgeInsets.zero,constraints: BoxConstraints(),)
                      ],
                    )
                  ),
                  Text("버스 번호 검색 후 정류장을 선택하세요",style: TextStyle(fontSize: 14,color: Color.fromRGBO(153, 153, 153, 1)))
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: 124,
              width: double.infinity,
              color: Color.fromRGBO(243, 243, 243, 1),
              margin: EdgeInsets.only(right: 29,left: 29),
              padding: EdgeInsets.only(left: 29),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    padding: EdgeInsets.only(top: 3),
                    height:20,
                    width: 33,
                    color: Colors.grey,
                    child: Text("추가",style: TextStyle(color: Colors.white,fontSize: 13),textAlign: TextAlign.center),),
                  Padding(
                      padding: EdgeInsets.only(right: 9,top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("노선 버스 추가",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 13,),padding: EdgeInsets.zero,constraints: BoxConstraints(),)
                        ],
                      )
                  ),
                  Text("버스 번호 검색 후 정류장을 선택하세요",style: TextStyle(fontSize: 14,color: Color.fromRGBO(153, 153, 153, 1)))
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 30,
              child: Row(
                children: [
                  SizedBox(width: 15,),
                  Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Icon(Icons.question_mark,size: 17)),
                  SizedBox(width: 5,),
                  Text("스마트 미러는 최대 2개의 버스 노선 정보를 제공합니다.\n정보 제공처:부산특별시",
                    style: TextStyle(fontSize: 12,color: Color.fromRGBO(153, 153, 153, 1),overflow: TextOverflow.ellipsis),)
                ],
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(left: Get.width/4*2,bottom: 30),
              height: 100,
              width: 100,

              decoration: BoxDecoration(
                   image: DecorationImage(
                  image: AssetImage("assets/images/home_page/busNoBg.png")
                )
              ),
            ),

          ],
        ),
      ) ,
    );
  }
}
