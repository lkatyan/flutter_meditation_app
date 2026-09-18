import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/common/color_extension.dart';

class Button extends StatelessWidget {
  final String icon;
  final String selectIcon;
  final VoidCallback onTap;
  final bool isActive;
  const Button(
    {super.key,
    required this.icon,
    required this.selectIcon,
    required this.isActive,
    required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min, 
        children: [
          Image.asset(
            isActive ? selectIcon : icon,
            width: 25, 
            height: 25, 
            fit: BoxFit.fitWidth),
          SizedBox(
            height: isActive ?  8: 12,
          ),
          if (isActive)
            Container(
              width: 4,
              height: 4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: TColor.secondaryColor,
                ),
                borderRadius: BorderRadius.circular(2)
              ),
            )
        ]
      ),
    );
  }
}