import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import 'package:myapp/app/controllers/page_index_controller.dart';
import 'package:myapp/app/routes/app_pages.dart';
// import 'package:share_plus/share_plus.dart';

import '../../Navigation/BottomNavigationBar.dart';
import '../controllers/detail_gambar_controller.dart';

class DetailGambarView extends GetView<DetailGambarController> {
  final PageC = Get.find<PageIndexController>();
  DetailGambarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ketapang Travel Guide"),
        centerTitle: true,
      ),
      body: FutureBuilder(
        // future: controller.getWisata(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          // Wisata? wisata = snapshot.data!;
          return ListView(
            // itemCount: snapshot.data!.lenght,
            // itemBuilder: (context, index) {//},
            padding: EdgeInsets.all(10),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                      "http://e-ktg.ketapangkab.go.id/public/app/images/atraksi%20wisata/20-1669179732-aPqzt.jpg")
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LikeButton(
                        isLiked: false,
                        likeCount: 0,
                      ),
                      // IconButton(
                      //     onPressed: () => share(context, 1), icon: Icon(Icons.share))
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Snorkling",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Pengelola",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Muhammad Luqinul"),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("+2472472847326"),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Buka",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Senin - Minggu : 08:00 - 16:00 WIB",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Text(
                    "Terbaru Diupload",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
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
                                  "http://e-ktg.ketapangkab.go.id/public/app/images/atraksi%20wisata/22-1669180531-fBjCz.jpg"),
                            ),
                          ),
                          Padding(
                            child: TextButton(
                                onPressed: () =>
                                    Get.toNamed(Routes.DETAIL_GAMBAR),
                                child: Text(
                                  "Wisata Alam",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )),
                            padding: const EdgeInsets.only(top: 0),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, bottom: 5),
                            child: Text(
                              "1 weeks Ago",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10, bottom: 20),
                            child: Text(
                              "Bukit Kuri",
                              style: TextStyle(fontSize: 12),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        PageC: PageC,
      ),
    );
  }
}
