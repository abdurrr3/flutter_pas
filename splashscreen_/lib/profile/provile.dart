// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:splashscreen_/profile/components/list.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: Text('Menu Akun'),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: InkWell(
              onTap: () {},
              child: Image.asset('setting.png'),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24.0,horizontal: 24.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('barkot.png'),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('muhammad izzan',style: TextStyle(
                          fontWeight: FontWeight.w700
                        ),),
                        Text('160002359102020',style: TextStyle(
                          color: Colors.grey[600]
                        ),)
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    ListProfile('profile.png', 'Profil Saya'),
                    ListProfile('kotak.png', 'Pesanan'),
                    ListProfile('bintang.png', 'Ulasan'),
                    ListProfile('hadiah.png', ' Reward Saya'),
                    ListProfile('tandatanya.png', 'Bantuan'),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
