import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/common/color_extension.dart';
import 'package:flutter_meditation_app/common/font_extension.dart';
import 'package:flutter_meditation_app/common_widget/round_button.dart';
import 'package:flutter_meditation_app/common_widget/round_textfield.dart';
import 'package:flutter_meditation_app/view/login/complete_profile_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: media.height * 0.9,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox( height: media.width * 0.04, ),
                Text(
                  "Добро пожаловать!",
                  style: TextStyle(color: TColor.gray, fontSize: TFont.fontTextSizeTitle),
                ),
                Text(
                  "Войдите в аккаунт",
                  style: TextStyle(
                    color: TColor.black,
                    fontSize: TFont.fontTextSizeTitle,
                    fontWeight: FontWeight.w700),
                ),
                SizedBox( height: media.width * 0.05, ),
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
                SizedBox( height: media.width * 0.02, ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Забыли пароль?",
                      style: TextStyle(
                        color: TColor.gray,
                        fontSize: TFont.fontTextSizeMiniText,
                        decoration: TextDecoration.underline),
                    ),
                  ],
                ),
                const Spacer(),
                RoundButton(
                  title: "Войти",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CompleteProfileView()));
                  }),
                SizedBox( height: media.width * 0.04, ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: TColor.gray.withValues(alpha: 0.5),
                      )),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: TColor.gray.withValues(alpha: 0.5),
                      )),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Еще нет аккаунта? ",
                        style: TextStyle(
                          color: TColor.black,
                          fontSize: TFont.fontTextSizeMiniText,
                        ),
                      ),
                      Text(
                        "Зарегистрироваться",
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