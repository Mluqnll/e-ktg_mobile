import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../models/desawisata_model.dart';

class DesawisataProvider extends GetConnect {
  final String base_url = 'http://192.168.1.100/api/desawisata/all';
  Future<Desawisata?> getDesawisata(int id) async {
    final response = await get('$base_url/desawisata/$id');
    return response.body;
  }

  Future<List<Desawisata>?> getAllDesaWisata() async {
    final Response = await get(base_url);
    return Desawisata.fromJsonList(Response.body['data']);
  }
}
