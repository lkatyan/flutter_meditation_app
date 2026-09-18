
import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/common/color_extension.dart';
import 'package:flutter_meditation_app/common_widget/on_boarding_page.dart';
import 'package:flutter_meditation_app/view/login/signup_view.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int selectPage = 0;
  PageController controller = PageController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      selectPage = controller.page?.round() ?? 0;
      setState(() {});
    });
  }

  List pageArr = [
    {
      "title":"Отслеживайте прогресс",
      "subtitle":"Данное приложение поможет следить за прогрессом медитаций",
      "image":"assets/img/on_boarding_1.png"
    },
    {
      "title":"Продолжайте медитации",
      "subtitle":"Не останавливайтесь на середине пути. Если вы сдадитесь, прогресс обнулится",
      "image":"assets/img/on_boarding_2.png"
    },
    {
      "title":"Хорошо питайтесь",
      "subtitle":"В приложении можно составить индивидуальный план питания на каждый день",
      "image":"assets/img/on_boarding_3.png"
    },
    {
      "title":"Улучшайте качество сна",
      "subtitle":"Полноценный сон подарит силы и хорошее настроение по утрам",
      "image":"assets/img/on_boarding_4.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.white,
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
            controller: controller,
            itemCount: pageArr.length,
            itemBuilder: (context, index) {
              var pObj = pageArr[index] as Map? ?? {};
              return OnBoardingPage(pObj: pObj); 
          } ),
          SizedBox(
            width: 120,
            height: 120,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
                  child: CircularProgressIndicator(
                    color: TColor.lightGray,
                    value: (selectPage+1) / 4 ,
                    strokeWidth: 2,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  width: 50,
                  height: 50,
                  decoration: 
                    BoxDecoration(
                      color: TColor.primaryColor1, 
                      borderRadius: BorderRadius.circular(35)
                    ),
                  child: 
                    IconButton(
                      icon: Icon( Icons.navigate_next, color: TColor.white, ), 
                      color: TColor.primaryColor1, 
                      onPressed: () {
                        if (selectPage < 3) {
                          selectPage = selectPage+1;
                          controller.animateToPage(
                            selectPage, 
                            duration: const Duration(milliseconds: 800), 
                            curve: Curves.bounceInOut);
                          setState(() {});
                        } else {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpView()));
                        }
                      },
                    )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}