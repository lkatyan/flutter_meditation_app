import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/common/font_extension.dart';
import '../common/color_extension.dart';

class RoundTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String hitText;
  final String icon;
  final Widget? rigtIcon;
  final bool obscureText;
  final EdgeInsets? margin;
  const RoundTextField({super.key, required this.hitText, required this.icon, this.controller, this.margin, this.keyboardType, this.obscureText = false , this.rigtIcon });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
          color: TColor.darkWhite, 
          borderRadius: BorderRadius.circular(15)),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: hitText,
            suffixIcon: rigtIcon,
            prefixIcon: Container(
              alignment: Alignment.center,
              width: 20,
              height: 20,
              child: Image.asset(
                icon,
                width: 20,
                height: 20,
                fit: BoxFit.contain,
                color: TColor.black,
              )
            ),
            hintStyle: TextStyle(color: TColor.black, fontSize: TFont.fontTextSizeMiniText)
        ),
      ),
    );
  }
}