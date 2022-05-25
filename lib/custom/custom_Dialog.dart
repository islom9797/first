import 'package:first/pages/reg_page/registration_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDialog extends StatelessWidget {
  CustomDialog({
    Key? key,required this.title,required this.text ,required this.select1,required this.select2,required this.press
  }) : super(key: key);
  final title;
  final text;
  final select1;
  final select2;
  final press;

  TextStyle textStyle =
      TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Dialog(
      insetPadding: EdgeInsets.only(left: 0, right: 0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(
        context,
      ),
    );
  }

  dialogContent(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height / 8 * 2,
      width: MediaQuery.of(context).size.width / 3 * 2,
      child: Column(
        children: [
          SizedBox(height: 20,),
          Center(
              child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(2, 34, 97, 1),
                fontWeight: FontWeight.bold,
                fontSize: 16),
          )),
          Container(
            height: 15,
          ),
          Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                text,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              )),
          Spacer(),
          Row(
            children: [
              Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                height: 60,
                color: Colors.grey.withOpacity(0.3),
                      child: Center(child: Text(select1,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))),
              ),
                  )
              ),
              Expanded(
                  child: GestureDetector(
                    onTap: press,
                    child: Container(
                height: 60,
                color: Color.fromRGBO(255, 224, 99, 1),
                 child: Center(child: Text(select2,
                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))),
              ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
