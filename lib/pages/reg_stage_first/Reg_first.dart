import 'package:first/pages/homePage/home_page.dart';
import 'package:first/pages/reg_page/registration_page.dart';
import 'package:first/services/Utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class RegFirst extends StatefulWidget {
  const RegFirst({Key? key}) : super(key: key);
  static final String id="regFirst";

  @override
  State<RegFirst> createState() => _RegFirstState();
}



class _RegFirstState extends State<RegFirst> {
TextStyle textstyle=TextStyle(color: Colors.white,fontSize: 30);

@override
void initState() {
  // TODO: implement initState
  super.initState();
Future.delayed(Duration(seconds: 3)).then((value) => {
  Navigator.pushReplacementNamed(context, Registration.id)
});


}

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        backgroundColor: Utils.splashColorBackground,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,

        ),
        body: Column(
          children: [
            SizedBox(height: 100,),
            Center(child: Text("스마트미러 설정",style: textstyle,)),
            SizedBox(height: 10,),
            Center(child: Text("Smart Mirror Setting",style: textstyle.copyWith(fontSize: 20),)),

            Spacer(),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.transparent,
                image:DecorationImage(
                  image: AssetImage("assets/images/splash_page/img_logo_w.png"),


                )
              ),
            ),
            SizedBox(height: 50,)


          ],
        ),
      ),
    );
  }
}
