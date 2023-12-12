// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:flutter/material.dart';

class Keranjang extends StatefulWidget {
  @override
  State<Keranjang> createState() => _KeranjangState();
}

class _KeranjangState extends State<Keranjang> {
  int putih = 1;
  int hitam = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 1000,
        foregroundColor: Colors.black,
        leading: Row(
          children: [
            BackButton(),
            SizedBox(width: 20),
            Text(
              'Keranjang',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(width: 290),
            Image.asset('keranjang/lope.png')
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(height: 2, color: Colors.grey[350]),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      '2',
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'barang',
                      style: TextStyle(color: Colors.grey[600]),
                    )
                  ],
                ),
                Text(
                  'Hapus semua',
                  style: TextStyle(
                      color: Color(0xff0058AB), fontWeight: FontWeight.w900),
                )
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('keranjang/lemariitem.png'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ALEX',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Unit laci, abu-abu toska,\n36x70 cm',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff6C6C6C)),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Rp1.350.000',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Container(child: Image.asset('keranjang/tong.png')),
                      SizedBox(width: 16),
                      Container(
                        width: 183,
                        height: 38,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.5,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (hitam > 0) {
                                  setState(() {
                                    hitam = hitam - 1;
                                  });
                                }
                              },
                              child: Image.asset('detail/jumlah/minus.png'),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(hitam.toString()),
                            SizedBox(
                              width: 20.0,
                            ),
                            GestureDetector(
                              onTap: () {
                                if (hitam > -1) {
                                  setState(() {
                                    hitam = hitam + 1;
                                  });
                                }
                              },
                              child: Image.asset('detail/jumlah/plus.png'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 24),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('keranjang/lemariputih.png'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MACKAPÄR',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Kabinet/tempat sepatu, putih,\n80x35x102 cm',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff6C6C6C)),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Rp1.499.000',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Container(child: Image.asset('keranjang/tong.png')),
                      SizedBox(width: 16),
                      Container(
                        width: 183,
                        height: 38,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.5,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (putih > 0) {
                                  setState(() {
                                    putih = putih - 1;
                                  });
                                }
                              },
                              child: Image.asset('detail/jumlah/minus.png'),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(putih.toString()),
                            SizedBox(
                              width: 20.0,
                            ),
                            GestureDetector(
                              onTap: () {
                                if (putih > -1) {
                                  setState(() {
                                    putih = putih + 1;
                                  });
                                }
                              },
                              child: Image.asset('detail/jumlah/plus.png'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
