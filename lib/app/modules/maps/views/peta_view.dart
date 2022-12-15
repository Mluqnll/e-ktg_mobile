import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:myapp/app/controllers/page_index_controller.dart';

import '../controllers/peta_controller.dart';
import '../../Navigation/BottomNavigationBar.dart';

class PetaView extends GetView<PetaController> {
  final PageC = Get.find<PageIndexController>();
  PetaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ketapang Travel Guide"),
        centerTitle: true,
      ),
      body: Center(),
      bottomNavigationBar: CustomBottomNavigationBar(
        PageC: PageC,
      ),
    );
  }
}
