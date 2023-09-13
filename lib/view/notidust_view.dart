import 'package:flutter/material.dart';
import 'dart:async';
import 'package:app_project/utils/global.colors.dart';
import 'package:get/get.dart';
import 'package:app_project/view/login.view.dart';


class NotiDustView extends StatelessWidget {
  const NotiDustView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.to(LoginView());
    });
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: Center(
        child: Text(
          'Noti DUST',
          style: TextStyle(
          color: Colors.white,
          fontSize: 35,
          fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
