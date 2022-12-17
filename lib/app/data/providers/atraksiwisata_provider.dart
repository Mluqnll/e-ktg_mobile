import 'package:get/get.dart';

import '../models/atraksiwisata_model.dart';

class AtraksiwisataProvider extends GetConnect {
  final String base_url = 'http://192.168.1.100/api/atraksiwisata/all';
  Future<Atraksiwisata?> getAtraksiwisata(int id) async {
    final response = await get('atraksiwisata/$id');
    return response.body;
  }

  Future<List<Atraksiwisata>?> getAllAtraksiwisata() async {
    final Response = await get(base_url);
    return Atraksiwisata.fromJsonList(Response.body['data']);
  }
}
