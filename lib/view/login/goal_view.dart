import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_meditation_app/view/login/welcome_view.dart';
import 'package:flutter_meditation_app/common/font_extension.dart';
import '../../common/color_extension.dart';
import '../../common_widget/round_button.dart';

class GoalView extends StatefulWidget {
  const GoalView({super.key});

  @override
  State<GoalView> createState() => _GoalViewState();
}

class _GoalViewState extends State<GoalView> {
  CarouselSliderController buttonCarouselController = CarouselSliderController();

  List goalArr = [
    {
      "image": "assets/img/on_boarding_4.png",
      "title": "Успокоение ума и снятие стресса",
      "subtitle":
          "Хочу остановить внутренний диалог, \nснизить уровень тревоги и расслабить нервную систему"
    },
    {
      "image": "assets/img/on_boarding_1.png",
      "title": "Развитие осознанности",
      "subtitle":
          "Хочу замечать \nсвои мысли и эмоции со стороны, \nне вовлекаясь в них и не оценивая их"
    },
    {
      "image": "assets/img/on_boarding_2.png",
      "title": "Концентрация и фокус",
      "subtitle":
          "Хочу удерживать внимание \nна одном объекте (например, на дыхании), \nчто улучшает продуктивность и память"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: CarouselSlider(
                items: goalArr.map((gObj) => Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: TColor.primaryColor,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: EdgeInsets.symmetric(vertical: media.width * 0.1, horizontal: 10),
                  alignment: Alignment.center,
                  child: FittedBox(
                    child: Column(
                      children: [
                        Image.asset(
                          gObj["image"].toString(),
                          width: media.width*5,
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox( height: media.width * 0.5, ),
                        Text(
                          gObj["title"].toString(),
                          style: TextStyle(
                            color: TColor.white,
                            fontSize: TFont.fontTextSizeTitle*5,
                            fontWeight: FontWeight.w700),
                        ),
                        Container(
                          width: media.width * 0.1,
                          height: 1,
                          color: TColor.black,
                        ),
                        SizedBox( height: media.width * 0.02, ),
                        Text(
                          gObj["subtitle"].toString(),
                          textAlign: TextAlign.center,
                          style:
                            TextStyle(color: TColor.white, fontSize: TFont.fontTextSizeSubTitle*5),
                        ),
                      ],
                    ),
                  ),
                ),).toList(),
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.7,
                  aspectRatio: 0.74,
                  initialPage: 0,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              width: media.width,
              child: Column(
                children: [
                  SizedBox( height: media.width * 0.01, ),
                  Text(
                    "Какая у вас цель ?",
                    style: TextStyle(
                      color: TColor.black,
                      fontSize: TFont.fontTextSizeTitle,
                      fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Это поможет выбрать лучшую программу для вас",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: TColor.gray, fontSize: TFont.fontTextSizeMiniText),
                  ),
                  const Spacer(),
                  SizedBox( height: media.width * 0.05, ),
                  RoundButton(
                    title: "Выбрать",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WelcomeView()));
                    }),
                  SizedBox( height: media.width * 0.05, ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}