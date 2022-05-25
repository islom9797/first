import 'package:first/services/Utils.dart';
import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,

        required this.press,
        required this.text,
       })
      : super(key: key);

  final VoidCallback press;
  final text;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      margin: const EdgeInsets.only(bottom: 40,left: 60,right: 60),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary:  Utils.colorYellow,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            shadowColor: Colors.transparent,
            elevation: 0),
        onPressed: press,
        child: Text(
          text,
          textScaleFactor: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
