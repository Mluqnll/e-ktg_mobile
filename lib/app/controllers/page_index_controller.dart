import 'package:get/get.dart';
import 'package:myapp/app/routes/app_pages.dart';

class PageIndexController extends GetxController {
  RxInt pageIndex = 0.obs;

  get selectedDate => null;

  void changeaPage(int i) async {
    print("click index=$i");
    pageIndex.value = i;
    switch (i) {
      case 1:
        Get.offAllNamed(Routes.ATRAKSI);
        break;
      case 2:
        Get.offAllNamed(Routes.PETA);
        break;
      case 3:
        Get.offAllNamed(Routes.KALENDER);

        break;
      case 4:
        Get.offAllNamed(Routes.NOTIFICATION);
        break;
      default:
        Get.offAllNamed(Routes.HOME);
    }
  }
}
