import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/data/models/atraksiwisata_model.dart';
import 'package:myapp/app/data/providers/atraksiwisata_provider.dart';

import '../../../routes/app_pages.dart';

class AtraksiController extends GetxController {
  AtraksiwisataProvider provider = AtraksiwisataProvider();
  Future<List<Atraksiwisata>?> getAllAtraksiwisata() async {
    return await provider.getAllAtraksiwisata();
  }
}
