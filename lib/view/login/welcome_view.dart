import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/common/font_extension.dart';
import '../../common/color_extension.dart';
import '../../common_widget/round_button.dart';
import '../main/main_view.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SafeArea(
        child: Container(
          width: media.width,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox( height: media.width * 0.1, ),
              Image.asset(
                "assets/img/goal.png",
                width: media.width * 0.9,
                fit: BoxFit.fitWidth,
              ),
              SizedBox( height: media.width * 0.2, ),
              Text(
                "Добро пожаловать!",
                style: TextStyle(
                  color: TColor.black,
                  fontSize: TFont.fontTextSizeTitle,
                  fontWeight: FontWeight.w700),
              ),
              SizedBox( height: media.width * 0.1, ),
              Text(
                "Теперь все готово, \nдавайте вместе \nдостигнем ваших целей",
                textAlign: TextAlign.center,
                style: TextStyle(color: TColor.gray, fontSize: TFont.fontTextSizeSubTitle),
              ),
              const Spacer(),
              RoundButton(
                title: "Начать",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainView()));
                }
              ),  
            ],
          ),
        ),
      ),
    );
  }
}