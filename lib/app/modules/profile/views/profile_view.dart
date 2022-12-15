import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myapp/app/routes/app_pages.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ketapang Travel Guide"),
        centerTitle: true,
      ),
      body: StreamBuilder(builder: (context, snapshot) {
        return ListView(
          padding: EdgeInsets.all(20),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Image.network(
                      "https://ui-avatars.com/api/?name=Muhammad+Luqinul",
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Muhammad Luqinul",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "muhammadluqinul@mail.com",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () => Get.offAllNamed(Routes.LOGIN),
              leading: Icon(Icons.logout),
              title: Text("Log Out"),
            )
          ],
        );
      }),
    );
  }
}
