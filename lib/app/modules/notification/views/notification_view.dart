import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/page_index_controller.dart';
import '../../Navigation/BottomNavigationBar.dart';
import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  final PageC = Get.find<PageIndexController>();
  NotificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ketapang Travel Guide"),
        centerTitle: true,
      ),
      body: Scaffold(),
      bottomNavigationBar: CustomBottomNavigationBar(
        PageC: PageC,
      ),
    );
  }
}
