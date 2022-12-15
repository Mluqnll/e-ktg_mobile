import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  void login() async{
    if (emailC.text.isNotEmpty && passC.text.isNotEmpty){
      // eksekusi
    } else {
      Get.snackbar("Terjadi Kesalahan", "Email dan Password Wajib Diisi!!");
    }
  }
}
