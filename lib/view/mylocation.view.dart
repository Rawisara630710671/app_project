import 'package:app_project/screens/current.location.screen.dart';
import 'package:app_project/view/login.view.dart';
import 'package:app_project/view/widgets/text.from.global.dart';
import 'package:flutter/material.dart';
import 'package:app_project/utils/global.colors.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class MyLocationView extends StatefulWidget {
  const MyLocationView({Key? key}) : super(key: key);

  @override
  State<MyLocationView> createState() => _MyLocationViewState();
}

class _MyLocationViewState extends State<MyLocationView> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
          child: MaterialButton(
            minWidth: double.infinity,
            height: 30,
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return const CurrentLocationScreen();
                  }));
            },
            color: Colors.blue[300],
            elevation: 0,
            child: Text(
              'crrent location',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
        )
    );
  }
}
