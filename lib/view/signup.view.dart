import 'package:app_project/view/widgets/text.from.global.dart';
import 'package:flutter/material.dart';
import 'package:app_project/utils/global.colors.dart';
import 'package:location/location.dart';

class SignUpView extends StatelessWidget {
  SignUpView({Key? key,
    required this.currentLocation
  }) : super(key: key);
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController gpsController = TextEditingController();
  final LocationData currentLocation;

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
                Text('Create New Account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  color: GlobalColors.textColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 20,),
                Text('User Name',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                ///userName Input
                const SizedBox(height: 10),
                TextFormGlobal(
                  controller: userNameController,
                  text: 'your name',
                  obscure: false,
                  textInputType: TextInputType.name,
                ),

                const SizedBox(height: 20,),
                Text('Phone',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                ///Phone Input
                const SizedBox(height: 10),
                TextFormGlobal(
                  controller: phoneController,
                  text: 'your phone',
                  obscure: false,
                  textInputType: TextInputType.phone,
                ),

                const SizedBox(height: 20,),
                Text('E-mail Address',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                ///email Input
                const SizedBox(height: 10),
                TextFormGlobal(
                  controller: emailController,
                  text: 'your e-mail',
                  obscure: false,
                  textInputType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 20,),
                Text('Location',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                ///GPS Input
                const SizedBox(height: 10),
                TextFormGlobal(
                  controller: gpsController,
                  text: 'your location',
                  obscure: false,
                  textInputType: TextInputType.name,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
