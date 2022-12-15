import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myapp/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? email;
    String? password;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.only(top: 70)),
            Center(
              child: Container(
                  height: 100,
                  child: Image.asset(
                    "assets/images/logo.png",
                    color: Colors.black,
                  )),
            ),
            SizedBox(
              height: 50,
            ),
            Card(
              child: Column(
                children: [
                  TextFormField(
                    onSaved: (e) => email = e,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        label: Text('Email'),
                        fillColor: Colors.grey[300],
                        filled: true),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    onSaved: (e) => password = e,
                    obscureText: true,
                    decoration: InputDecoration(
                      label: Text('Password'),
                      fillColor: Colors.grey[300],
                      filled: true,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: Get.width,
                    child: ElevatedButton(
                        onPressed: () => Get.offAllNamed(Routes.HOME),
                        child: Text('Log In')),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have a account?",
                  style: TextStyle(color: Colors.black45),
                ),
                TextButton(
                    onPressed: () => Get.toNamed(Routes.REGISTER),
                    child: Text("Sign Up"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
