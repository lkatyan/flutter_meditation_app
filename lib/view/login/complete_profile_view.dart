import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/common/color_extension.dart';
import 'package:flutter_meditation_app/view/login/goal_view.dart';
import 'package:flutter_meditation_app/common/font_extension.dart';
import '../../common_widget/round_button.dart';
import '../../common_widget/round_textfield.dart';

class CompleteProfileView extends StatefulWidget {
  const CompleteProfileView({super.key});

  @override
  State<CompleteProfileView> createState() => _CompleteProfileViewState();
}

class _CompleteProfileViewState extends State<CompleteProfileView> {
  TextEditingController txtDate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Image.asset(
                  "assets/img/complete_profile.png",
                  width: media.width/2,
                  fit: BoxFit.fitWidth,
                ),
                SizedBox( height: media.width * 0.05, ),
                Text(
                  "Заполните профиль",
                  style: TextStyle(
                    color: TColor.black,
                    fontSize: TFont.fontTextSizeTitle,
                    fontWeight: FontWeight.w700),
                ),
                Text(
                  "Это поможет узнать вас получше",
                  style: TextStyle(color: TColor.gray, fontSize: TFont.fontTextSizeMiniText),
                ),
                SizedBox( height: media.width * 0.05, ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: TColor.darkWhite,
                          borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 50,
                              height: 50,
                              padding: const EdgeInsets.symmetric(horizontal: 15),        
                              child: Image.asset(
                                "assets/img/gender.png",
                                width: 20,
                                height: 20,
                                fit: BoxFit.contain,
                                color: TColor.gray,
                              )),
                            Expanded(
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  items: ["Мужчина", "Женщина"].map((name) => DropdownMenuItem(
                                    value: name,
                                    child: Text(
                                      name,
                                      style: TextStyle(
                                        color: TColor.gray,
                                        fontSize: TFont.fontTextSizeMiniText),
                                    ),
                                  )).toList(),
                                  onChanged: (value) {},
                                  isExpanded: true,
                                  hint: Text(
                                    "Пол",
                                    style: TextStyle(
                                      color: TColor.gray, fontSize: TFont.fontTextSizeMiniText),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8,)
                          ],
                        ),
                      ),
                      SizedBox( height: media.width * 0.04, ),
                      RoundTextField(
                        controller: txtDate,
                        hitText: "Дата рождения",
                        icon: "assets/img/date.png",
                      ),
                      SizedBox( height: media.width * 0.04, ),
                      Row(
                        children: [
                          Expanded(
                            child: RoundTextField(
                              controller: txtDate,
                              hitText: "Вес",
                              icon: "assets/img/weight.png",
                            ),
                          ),
                          const SizedBox( width: 8, ),
                          Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: TColor.primaryColor,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              "КГ",
                              style: 
                                TextStyle(color: TColor.white, fontSize: TFont.fontTextSizeMiniText/1.5),
                            ),
                          )
                        ],
                      ),
                      SizedBox( height: media.width * 0.04, ),
                      Row(
                        children: [
                          Expanded(
                            child: RoundTextField(
                              controller: txtDate,
                              hitText: "Рост",
                              icon: "assets/img/height.png",
                            ),
                          ),
                          const SizedBox( width: 8, ),
                          Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: TColor.primaryColor,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              "СМ",
                              style:
                                  TextStyle(color: TColor.white, fontSize: TFont.fontTextSizeMiniText/1.5),
                            ),
                          )
                        ],
                      ),
                      SizedBox( height: media.width * 0.07, ),
                      RoundButton(
                        title: "Далее >",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const GoalView()));
                        }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}