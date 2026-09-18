import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/common/color_extension.dart';
import 'package:flutter_meditation_app/common/font_extension.dart';
import 'package:flutter_meditation_app/view/on_boarding/on_boarding_view.dart';
import '../../common_widget/round_button.dart';

class StartedView extends StatefulWidget {
  const StartedView({super.key});

  @override
  State<StartedView> createState() => _StartedViewState();
}

class _StartedViewState extends State<StartedView> {
  bool isChangeColor = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: Container(
        width: media.width,
        decoration: 
          BoxDecoration(
            gradient: isChangeColor
              ? LinearGradient(
                colors: TColor.secondaryColor,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)
              : null,
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Image.asset(
                "assets/img/on_started_page.png", 
                width: media.width, 
                fit: BoxFit.fitWidth
              ),
            ),
            const Spacer(),
            Text(
              "Медитации",
              style: TextStyle(
                color: TColor.black,
                fontSize: TFont.fontTextSizeTitle,
                fontWeight: FontWeight.w700),
            ),
            Text(
              "Может попробовать каждый",
              style: TextStyle(
                color: TColor.gray,
                fontSize: TFont.fontTextSizeSubTitle),
            ),
            const Spacer(),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: RoundButton(
                  title: "Начать",
                  type: isChangeColor
                      ? RoundButtonType.textGradient
                      : RoundButtonType.bgGradient,
                  onPressed: () {
                    if (isChangeColor) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OnBoardingView()));
                    } else {
                      setState(() {
                        isChangeColor = true;
                      });
                    }
                  },
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}