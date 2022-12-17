import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_widget_cache.dart';
import 'package:myapp/app/data/models/desawisata_model.dart';
import 'package:myapp/app/routes/app_pages.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/home_controller.dart';
import '../../../controllers/page_index_controller.dart';
import '../../Navigation/BottomNavigationBar.dart';

class HomeView extends GetView<HomeController> {
  final PageC = Get.find<PageIndexController>();
  @override
  Widget build(BuildContext context) {
    double widthDevice = MediaQuery.of(context).size.width;
    double heightDevice = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Ketapang Travel Guide"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () => Get.toNamed(Routes.PROFILE),
              icon: Icon(Icons.person)),
        ],
      ),
      body: FutureBuilder(
        future: controller.getAllDesaWisata(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                Desawisata desawisata = snapshot.data![index];
                return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.network(
                            "https://s3.theasianparent.com/tap-assets-prod/wp-content/uploads/sites/24/2021/12/Pantai7-Pegipegi-ok.jpg"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          "ELECTRONIC KETAPANG TRAVEL GUIDE, e-KTG (beta), adalah sarana penyedia informasi pariwisata"
                          "dan desa wisata di Kabupaten Ketapang yang terintegrasi dengan sistem JADESTA (Jaringan Desa Wisata) Kemenparekraf RI."
                          "​Website ini dikelola bersama oleh DPC MASATA Ketapang, Politeknik Negeri Ketapang, dan Dinas Pariwisata dan Kebudayaan Kabupaten Ketapang, Kalimantan Barat.",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Desa Wisata Kabupaten Ketapang',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(padding: EdgeInsets.all(9)),
                      Wrap(
                        children: <Widget>[
                          Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                GestureDetector(
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    width: 150,
                                    child: Image.network("${desawisata.foto1}"),
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "${desawisata.nama}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    )),
                                // Text("${desawisata.deskripsi}"),
                              ],
                            ),
                          ),
                        ],
                      )
                    ]);
              });
        },
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        PageC: PageC,
      ),
    );
  }
}
