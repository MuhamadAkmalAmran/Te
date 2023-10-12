import 'package:final_project_2023/app/data/data.dart';
import 'package:final_project_2023/app/data/warna.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

//kelas yang mewarisi GetView<HomeController>, yang menunjukkan bahwa ini adalah tampilan yang terhubung dengan HomeController.
class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //Scaffold adalah struktur dasar yang menyediakan komponen tata letak dasar untuk halaman aplikasi.
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [gradientStartColor, gradientEndColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.3, 0.7],
          ),
        ),
        //digunakan untuk memastikan bahwa konten aplikasi tidak tumpang tindih dengan area yang dilindungi seperti notch atau batas perangkat.
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Text(
                      "Sekilas Info",
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 44,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
              ),
              //widget untuk menggulir melalui daftar item dengan tata letak tumpukan (SwiperLayout.STACK).
              Container(
                height: 450,
                padding: const EdgeInsets.only(left: 32, top: 50),
                //Dalam Swiper, item-item diisi dengan informasi yang diambil dari daftar info, dan ditampilkan dalam kartu dengan berbagai properti seperti warna latar belakang, font, dan lainnya.
                child: Swiper(
                  itemCount: info.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 100,
                  layout: SwiperLayout.STACK,
                  pagination: SwiperPagination(
                    builder:
                        DotSwiperPaginationBuilder(activeSize: 20, space: 8),
                  ),
                  itemBuilder: (context, index) {
                    //sebagai area yang dapat ditekan oleh pengguna.
                    return InkWell(
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 100,
                              ),
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 10),
                                      Text(
                                        info[index].name,
                                        style: TextStyle(
                                          fontFamily: 'Avenir',
                                          fontSize: 44,
                                          color: const Color(0xff47455f),
                                          fontWeight: FontWeight.w900,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        info[index].description,
                                        style: TextStyle(
                                          fontFamily: 'Avenir',
                                          fontSize: 12,
                                          color: primaryTextColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Positioned(
                            right: 24,
                            bottom: 80,
                            child: Text(
                              info[index].position.toString(),
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 200,
                                color: primaryTextColor.withOpacity(0.08),
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
