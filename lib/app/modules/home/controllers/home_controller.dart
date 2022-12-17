import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/data/models/desawisata_model.dart';
import 'package:myapp/app/data/providers/desawisata_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController {
  DesawisataProvider provider = DesawisataProvider();
  Future<List<Desawisata>?> getAllDesaWisata() async {
    return await provider.getAllDesaWisata();
  }
}
