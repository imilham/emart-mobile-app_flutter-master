import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/auth_screen/signup_screen.dart';
import 'package:emart_app/views/home_screen/home.dart';
import 'package:emart_app/widgets_common/applogo_widget.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:emart_app/widgets_common/custom_textfield.dart';
import 'package:emart_app/widgets_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(children: [
          (context.screenHeight * 0.1).heightBox,
          applogoWidget(),
          10.heightBox,
          "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
          15.heightBox,
          Column(
            // 1st textfiel for the email
            children: [
              customTextField(hint: emailHint, title: email),

              // 2nd textfield for the password
              customTextField(hint: password, title: password),

              // creatig the forget button
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: forgetPass.text.make())),
              5.heightBox,

              // Creating the login button
              ourButton(
                  color: redColor,
                  title: login,
                  textColor: whiteColor,
                  onPress: () {
                    Get.to(() => const Home());
                  }).box.width(context.screenWidth - 50).make(),
              5.heightBox,

              // creating the or create a new account
              createNewAccount.text.color(fontGrey).make(),
              5.heightBox,

              // Creating the signup button
              ourButton(
                  color: lightGolden,
                  title: sigup,
                  textColor: redColor,
                  onPress: () {
                    Get.to(() => const SignupScreen());
                  }).box.width(context.screenWidth - 50).make(),
              10.heightBox,

              // making the login with text

              loginWith.text.color(fontGrey).make(),
              5.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    3,
                    (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: lightGrey,
                            radius: 25,
                            child: Image.asset(
                              socilaIconList[index],
                              width: 30,
                            ),
                          ),
                        )),
              )
            ],
          )
              .box
              .white
              .rounded
              .padding(const EdgeInsets.all(16))
              .width(context.screenWidth - 70)
              .shadowSm
              .make(),
        ]),
      ),
    ));
  }
}
