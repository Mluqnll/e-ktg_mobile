import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_widget_cache.dart';
import 'package:myapp/app/data/models/desawisata_model.dart';
import 'package:myapp/app/routes/app_pages.dart';

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
          print(snapshot.data);
          return ListView(
            children: [
              Container(
                child: Text('data ilang kontan'),
              )
            ],

            // itemCount: snapshot.data!.length,
            // itemBuilder: (context, index) {
            //   Desawisata wisata = snapshot.data![index];

            //   children:
            //   [
            //     Padding(padding: EdgeInsets.all(9)),
            //     Container(
            //       child: Image.network(
            //           "https://s3.theasianparent.com/tap-assets-prod/wp-content/uploads/sites/24/2021/12/Pantai7-Pegipegi-ok.jpg"),
            //     ),
            //     SizedBox(
            //       height: 20,
            //     ),
            //     Container(
            //       padding: EdgeInsets.only(left: 10, right: 10),
            //       child: Text(
            //         "ELECTRONIC KETAPANG TRAVEL GUIDE, e-KTG (beta), adalah sarana penyedia informasi pariwisata"
            //         "dan desa wisata di Kabupaten Ketapang yang terintegrasi dengan sistem JADESTA (Jaringan Desa Wisata) Kemenparekraf RI."
            //         "​Website ini dikelola bersama oleh DPC MASATA Ketapang, Politeknik Negeri Ketapang, dan Dinas Pariwisata dan Kebudayaan Kabupaten Ketapang, Kalimantan Barat.",
            //         textAlign: TextAlign.justify,
            //       ),
            //     ),
            //     SizedBox(
            //       height: 10,
            //     ),
            //     Center(
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Text(
            //             'Desa Wisata Kabupaten Ketapang',
            //             style: TextStyle(
            //                 fontSize: 20, fontWeight: FontWeight.bold),
            //           )
            //         ],
            //       ),
            //     ),
            //     SizedBox(
            //       height: 10,
            //     ),
            //     Wrap(
            //       children: [
            //         Card(
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: <Widget>[
            //               GestureDetector(
            //                 child: Container(
            //                   padding: EdgeInsets.symmetric(horizontal: 5),
            //                   width: 180,
            //                   child: Image.network(
            //                       "http://e-ktg.ketapangkab.go.id/public/app/images/desa%20wisata/17-1667721510-nA8Hn.jpg"),
            //                 ),
            //               ),
            //               TextButton(
            //                   onPressed: () {},
            //                   child: Text(
            //                     "Sungai Awan Kanan",
            //                     style: TextStyle(
            //                         fontWeight: FontWeight.bold,
            //                         color: Colors.black),
            //                   )),
            //               Text("Wisata Alam"),
            //             ],
            //           ),
            //         ),
            //         Card(
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: <Widget>[
            //               GestureDetector(
            //                 child: Container(
            //                   padding: EdgeInsets.symmetric(horizontal: 5),
            //                   width: 180,
            //                   child: Image.network(
            //                       "http://e-ktg.ketapangkab.go.id/public/app/images/desa%20wisata/18-1666229406-CeBfy.jpg"),
            //                 ),
            //               ),
            //               TextButton(
            //                   onPressed: () {},
            //                   child: Text(
            //                     "Desa Kendawangan Kiri",
            //                     style: TextStyle(
            //                         fontWeight: FontWeight.bold,
            //                         color: Colors.black),
            //                   )),
            //               Text("Wisata Alam"),
            //             ],
            //           ),
            //         ),
            //       ],
            //     )
            //   ];
            // });
          );
        },
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        PageC: PageC,
      ),
    );
  }
}
