import 'package:get/get.dart';

import '../controllers/detail_gambar_controller.dart';

class DetailGambarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailGambarController>(
      () => DetailGambarController(),
    );
  }
}
