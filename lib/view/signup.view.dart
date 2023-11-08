import 'package:app_project/screens/current.location.screen.dart';
import 'package:app_project/view/login.view.dart';
import 'package:app_project/view/widgets/text.from.global.dart';
import 'package:flutter/material.dart';
import 'package:app_project/utils/global.colors.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 20,
            color: GlobalColors.mainColor,
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            height: MediaQuery.of(context).size.height - 50,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      'Noti DUST',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: GlobalColors.mainColor,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Create New Account',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: <Widget>[
                    inputFile(label: "Email"),
                    inputFile(label: "Phone"),
                    inputFile(
                      label: "Password",
                      obscureText: true,
                    ),
                    inputFile(
                      label: "Comfirm Password",
                      obscureText: true,
                    ),
                  ],
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Add Your Crrent Location',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                ),
                const SizedBox(height: 5),
                Container(
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
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return LoginView();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: GlobalColors.mainColor
                  ),
                  child: const Text('Login'),
                ),
                Container(
                  height: 40,
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?'),
                      InkWell(
                        child: TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 17),
                          ),
                          onPressed: () {
                            Get.to(LoginView());
                          },
                          child: Text(
                            ' Login',
                            style: TextStyle(
                              color: GlobalColors.mainColor,
                            ),
                          ),
                        ),
                      ),
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

  Widget inputFile({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey.shade400,
              ),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.grey.shade400,
            )),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
