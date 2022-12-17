import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myapp/app/data/models/atraksiwisata_model.dart';
import 'package:myapp/app/routes/app_pages.dart';

import '../controllers/atraksi_controller.dart';
import '../../../controllers/page_index_controller.dart';
import '../../Navigation/BottomNavigationBar.dart';

class AtraksiView extends GetView<AtraksiController> {
  final pageC = Get.find<PageIndexController>();
  AtraksiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ketapang Travel Guide"),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: controller.getAllAtraksiwisata(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(itemBuilder: (context, index) {
            Atraksiwisata atraksiwisata = snapshot.data![index];
            return Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${atraksiwisata.kategori}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              // height: 200,
                              width: 185,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.network(
                                  "http://e-ktg.ketapangkab.go.id/public/app/images/atraksi%20wisata/20-1669179732-aPqzt.jpg"),
                            ),
                          ),
                          Padding(
                            child: TextButton(
                                onPressed: () =>
                                    Get.toNamed(Routes.DETAIL_GAMBAR),
                                child: Text(
                                  "${atraksiwisata.nama}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )),
                            padding: const EdgeInsets.only(top: 0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]);
          });
        },
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        PageC: pageC,
      ),
    );
  }
}
