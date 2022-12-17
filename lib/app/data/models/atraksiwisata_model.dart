class Atraksiwisata {
  String? nama;
  String? foto;
  String? kategori;

  Atraksiwisata({this.nama, this.foto, this.kategori});

  Atraksiwisata.fromJson(Map<String, dynamic> json) {
    nama = json['Nama'];
    foto = json['Foto'];
    kategori = json['kategori'];
  }

  static List<Atraksiwisata>? fromJsonList(List data) {
    if (data == null || data.length == 0) return [];
    return data.map((e) => Atraksiwisata.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['Nama'] = nama;
    data['Foto'] = foto;
    data['kategori'] = kategori;
    return data;
  }
}
