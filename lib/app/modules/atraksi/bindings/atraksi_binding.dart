import 'package:get/get.dart';

import '../controllers/atraksi_controller.dart';

class AtraksiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AtraksiController>(
      () => AtraksiController(),
    );
  }
}
