import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/common/color_extension.dart';
import 'package:flutter_meditation_app/common/font_extension.dart';
import 'package:flutter_meditation_app/common_widget/round_button.dart';
import 'package:flutter_meditation_app/common_widget/round_textfield.dart';
import 'package:flutter_meditation_app/view/login/complete_profile_view.dart';
import 'package:flutter_meditation_app/view/login/login_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox( height: media.width * 0.05, ),
                Text(
                  "Добро пожаловать!",
                  style: TextStyle(color: TColor.lightGray, fontSize: TFont.fontTextSizeTitle),
                ),
                Text(
                  "Создайте аккаунт",
                  style: TextStyle(
                      color: TColor.gray,
                      fontSize: TFont.fontTextSizeSubTitle,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox( height: media.width * 0.04, ),
                const RoundTextField(
                  hitText: "Имя",
                  icon: "assets/img/user_text.png",
                ),
                SizedBox( height: media.width * 0.04, ),
                const RoundTextField(
                  hitText: "Почта",
                  icon: "assets/img/email.png",
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox( height: media.width * 0.04, ),
                RoundTextField(
                  hitText: "Пароль",
                  icon: "assets/img/lock.png",
                  obscureText: true,
                  rigtIcon: TextButton(
                    onPressed: () {},
                    child: Container(
                      alignment: Alignment.center,
                      width: 20,
                      height: 20,
                      child: Image.asset(
                        "assets/img/show_password.png",
                        width: 20,
                        height: 20,
                        fit: BoxFit.contain,
                        color: TColor.gray,
                      ))),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isCheck = !isCheck;
                        });
                      },
                      icon: Icon(
                        isCheck
                            ? Icons.check_box_outlined
                            : Icons.check_box_outline_blank_outlined,
                        color: TColor.gray,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child:  Text(
                        "Принять Политику конфиденциальности и\nУсловия использования",
                        style: TextStyle(color: TColor.gray, fontSize: TFont.fontTextSizeMiniText),
                      ),
                    )
                  ],
                ),
                SizedBox( height: media.width * 0.4, ),
                RoundButton(title: "Зарегистрироваться", onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CompleteProfileView()));
                }),
                SizedBox( height: media.width * 0.04, ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: TColor.gray.withValues(alpha: 0.5),
                      )),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginView()));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Есть аккаунт?  ",
                        style: TextStyle(
                          color: TColor.black,
                          fontSize: TFont.fontTextSizeMiniText,
                        ),
                      ),
                      Text(
                        "Войти",
                        style: TextStyle(
                          color: TColor.black,
                          fontSize: TFont.fontTextSizeMiniText,
                          fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                SizedBox( height: media.width * 0.04, ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}