import 'package:flutter/material.dart';
import 'package:app_project/view/notidust_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotiDustView(),
    );
  }
}
