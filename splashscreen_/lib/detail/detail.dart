// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:splashscreen_/detail/compo/simpledet.dart';
import 'package:splashscreen_/keranjang.dart';

class Detail extends StatefulWidget {
  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int jumlah = 1;
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
              Text('ALEX/LAGKAPTEN'),
              SizedBox(width: 200),
              Icon(Icons.search),
              SizedBox(width: 10),
              Icon(Icons.share),
              SizedBox(width: 10),
              Icon(Icons.trolley)
            ],
          ),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Image.asset(
                  'detail.png',
                  height: 400,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Row(
                    children: [
                      ImgDetail('detail/Rectangle1.png'),
                      ImgDetail('detail/Rectangle2.png'),
                      ImgDetail('detail/Rectangle3.png'),
                      ImgDetail('detail/Rectangle4.png'),
                      ImgDetail('detail/Rectangle5.png'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14, top: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'ALEX/LAGKAPTEN',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(width: 250),
                          Image.asset('detail/hati.png')
                        ],
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Meja, hijau muda/putih, 120x60 cm',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Rp1.909.000',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          Image.asset('detail/bintang1.png'),
                          Image.asset('detail/bintang2.png'),
                          Image.asset('detail/bintang3.png'),
                          Image.asset('detail/bintang4.png'),
                          Image.asset('detail/bintang5.png'),
                          SizedBox(width: 6),
                          Text(
                            '4.5 | Terjual 116',
                            style: TextStyle(color: Colors.grey[700]),
                          )
                        ],
                      ),
                      SizedBox(height: 24),
                      Text(
                        'Ruang terbatas bukan berarti Anda harus menolak belajar atau bekerja dari rumah. Meja ini memakan sedikit ruang lantai namun masih memiliki unit laci tempat Anda dapat menyimpan kertas dan barang penting lainnya.',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        bottomNavigationBar: Container(
          width: MediaQuery.of(context).size.width,
          height: 104,
          decoration: BoxDecoration(
              border: Border(
            top: BorderSide(
              color: Colors.black12,
              width: 1,
            ),
          )),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 56,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.5,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (jumlah > 0) {
                            setState(() {
                              jumlah = jumlah - 1;
                            });
                          }
                        },
                        child: Image.asset('detail/jumlah/minus.png'),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(jumlah.toString()),
                      SizedBox(
                        width: 20.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (jumlah > -1) {
                            setState(() {
                              jumlah = jumlah + 1;
                            });
                          }
                        },
                        child: Image.asset('detail/jumlah/plus.png'),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 230,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Colors.blue[600]
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Keranjang()));
                    },
                    child: Text(
                      'Tambah ke Keranjang',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
