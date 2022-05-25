import 'package:first/pages/homePage/home_page.dart';
import 'package:flutter/material.dart';
class Oferta extends StatefulWidget {
  const Oferta({Key? key}) : super(key: key);
  static final String id="oferta";
  @override
  State<Oferta> createState() => _OfertaState();
}

class _OfertaState extends State<Oferta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("개인정보 수집 및 이용",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){
            Navigator.pop(context);
           // Navigator.pushNamed(context, HomePage.id);
          }, icon: Icon(Icons.close,color: Colors.black,))
        ],
      ),
      body:Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(

          child: Text("주식회사 씨브이네트(이하'회사'라고 함)는 이용자의 개인정보를 중요시하며, 정보통신망 \n이용촉진 및 개인정보 보호법을 준수하\n고 있습니다. 회사는\n 개인정보처리방침을 통하여"
              " 이용자에게 제공받는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려 드립니다. "
              "본 개인정보 처리방침은 회사 홈페이지를 이용하는 인터넷사용자들의 기본권인 사생활 비밀과 자유 및 통신 비밀을 보장하고 불법적인 도청, 정보유출로",
            style: TextStyle(fontSize: 30,),),
        ),
      ) ,
    );
  }
}
