
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import '../services/Utils.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    Key? key,

    required this.controller,
    required this.press,
    required this.text,
    required this.width


  }) : super(key: key);


  final controller;
  final press;
  final text;
  final width;


  @override
  Widget build(BuildContext context) {

    return Container(
      height:59 ,
      width: width,
      margin: EdgeInsets.only(left: 15,right: 15),
      padding: EdgeInsets.only(left: 25),
      decoration: BoxDecoration(

          color: Color.fromRGBO(243, 243, 243, 1),
          borderRadius: BorderRadius.circular(5),

          boxShadow: [
            BoxShadow(

                blurRadius: 2,
                spreadRadius: 0,
                offset: Offset(0,2),
                color: Colors.black.withOpacity(0.2)


            ),
          ]

      ),
      child: TextFormField(
     // /   onChanged: press,
        controller: controller,

        style:const TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w400,
        ),
        cursorColor: Utils.colorGreen,
                autofocus: false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          hintText: text,
          hintStyle: TextStyle(
              color: Color(0xffb4b4b4)
          ),

        ),
      ),
    );
  }
}
