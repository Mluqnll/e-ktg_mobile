class Desawisata {
  int? id;
  String? nama;
  String? deskripsi;
  String? linkJadesta;
  String? foto1;

  Desawisata(
      {this.id, this.nama, this.deskripsi, this.linkJadesta, this.foto1});

  Desawisata.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    nama = json['Nama'];
    deskripsi = json['Deskripsi'];
    linkJadesta = json['Link Jadesta'];
    foto1 = json['Foto 1'];
  }

  static List<Desawisata>? fromJsonList(List data) {
    if (data == null || data.length == 0) return [];
    return data.map((e) => Desawisata.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['Id'] = id;
    data['Nama'] = nama;
    data['Deskripsi'] = deskripsi;
    data['Link Jadesta'] = linkJadesta;
    data['Foto 1'] = foto1;
    return data;
  }
}
