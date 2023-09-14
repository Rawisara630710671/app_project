import 'package:app_project/view/signup.view.dart';
import 'package:app_project/view/widgets/button.global.dart';
import 'package:app_project/view/widgets/social.login.dart';
import 'package:app_project/view/widgets/text.from.global.dart';
import 'package:flutter/material.dart';
import 'package:app_project/utils/global.colors.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Noti DUST',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: GlobalColors.mainColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 50,),
                Text('Login to your account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 50),

                // Email Input
                TextFormGlobal(
                  controller: emailController,
                  text: 'Email',
                  obscure: false,
                  textInputType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 10),

                // Password Input
                TextFormGlobal(
                    controller: passwordController,
                    text: 'Password',
                    textInputType: TextInputType.text,
                    obscure: true
                ),
                const SizedBox(height: 20),
                const ButtonGlobal(),
                const SizedBox(height: 30),
                SocialLogin(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color:  Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account?'
            ),
            InkWell(
              child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: (){
                  Get.to(SignUpView());
                },
                child: Text(
                  ' Sign Up',
                  style: TextStyle(
                    color: GlobalColors.mainColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
