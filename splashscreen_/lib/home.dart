// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:splashscreen_/component.dart';

import 'package:splashscreen_/detail/detail.dart';

class Home extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Home> {
  List<String> items = [];

  List<String> filteredItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 200,
        leading: Padding(
          padding: EdgeInsets.only(left: 24, top: 10),
          child: Row(
            children: [
              Image.asset(
                'logoikea.png',
                width: 84,
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 24.0),
            child: Row(
              children: [
                Icon(Icons.notifications),
                SizedBox(
                  width: 24.0,
                ),
                Icon(Icons.trolley),
                SizedBox(
                  width: 24.0,
                ),
              ],
            ),
          )
        ],
      ),
      body: SafeArea(
          child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Cari barang impianmu',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 24),
                  child: Image.asset('gambar1.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 24),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      Category('kamar.png', "Kamar Tidur"),
                      Category('ruangkerja.png', "Ruang Kerja"),
                      Category('dapur.png', "Dapur"),
                      Category('boneka.png', "Bayi & Anak"),
                      Category('handuk.png', "Tekstil"),
                      Category('meja.png', "Penyimpanan")
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Produk Populer',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Lihat Semua',
                      style: TextStyle(
                          color: Colors.blue[800], fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('gantungan.png'),
                          Text(
                            'KROKFJORDEN',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Pengait dengan\nplastik isap ...',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Rp99.900',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      SizedBox(width: 24),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Detail()));
                            },
                            child: Column(
                              children: [
                                Image.asset('mejapth.png'),
                                Text(
                                  'ALEX/LAGKAPTEN',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Meja, hijau muda/\nputih, 120x60 cm',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Rp1.909.000',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      SizedBox(width: 24),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('lemarikcl.png'),
                          Text(
                            'FARDAL/PAX',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Kombinasi lemari\npakaian, putih/hig...',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Rp8.400.000',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Telusuri Koleksi Kami',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Lihat Semua',
                      style: TextStyle(
                          color: Colors.blue[800], fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('poster1.png'),
                    Image.asset('poster2.png')
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Penawaran Terkini',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Lihat Semua',
                      style: TextStyle(
                          color: Colors.blue[800], fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('posterlagi1.png'),
                    Image.asset('posterlagi2.png')
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
