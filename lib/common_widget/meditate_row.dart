import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/common/color_extension.dart';

class MeditateRow extends StatelessWidget {
  final Map wObj;
  const MeditateRow({super.key, required this.wObj});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      decoration: BoxDecoration(
          color: TColor.darkWhite,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 2)]
        ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              wObj["image"].toString(),
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 15,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  wObj["name"].toString(),
                  style: TextStyle(
                    color: TColor.black,
                    fontSize: 12),
                ),
                Text(
                  "Времени займет:  ${wObj["time"].toString()}минут",
                  style: TextStyle(
                    color: TColor.gray,
                    fontSize: 10),
                ),
                const SizedBox(height: 4,),
                TweenAnimationBuilder<double>(
                  tween: Tween<double>(begin: 0, end: wObj["progress"] as double? ?? 0.0),
                  duration: const Duration(seconds: 3),
                  curve: Curves.fastLinearToSlowEaseIn,
                  builder: (context, value, child) {
                    return Container(
                      height: 15,
                      width: media.width * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100, // backgroundColor
                        borderRadius: BorderRadius.circular(7.5), // borderRadius
                      ),
                      clipBehavior: Clip.antiAlias, // Чтобы градиент не вылезал за скругленные углы
                      child: Stack(
                        alignment: Alignment.centerLeft, // Заполнение слева направо (Axis.horizontal)
                        children: [
                          Container(
                            width: (media.width * 0.5) * value, // Анимированная ширина заполнения
                            height: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: TColor.primaryColor,
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            )
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/img/next_icon.png",
              width: 30,
              height: 30,
              fit: BoxFit.contain,
            )
          )
        ],
      )
    );
  }
}