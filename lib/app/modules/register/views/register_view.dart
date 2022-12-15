import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myapp/app/routes/app_pages.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
            Card(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text('Username'),
                        fillColor: Colors.grey[300],
                        filled: true),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text('Gender'),
                        fillColor: Colors.grey[300],
                        filled: true),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
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
                        onPressed: () => Get.offAllNamed(Routes.LOGIN),
                        child: Text('Sign Up')),
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
                  "Already have an account?",
                  style: TextStyle(color: Colors.black45),
                ),
                TextButton(
                    onPressed: () => Get.toNamed(Routes.LOGIN),
                    child: Text("Log in"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
