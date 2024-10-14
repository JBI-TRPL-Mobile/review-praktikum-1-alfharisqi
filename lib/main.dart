import 'package:flutter/material.dart';
import 'package:template_project/halaman_detail.dart';
import 'package:template_project/halaman_utama.dart';
import 'package:template_project/tentang_aplikasi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Katalog Buku',
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
     initialRoute: '/',
      routes: {
        '/' : (context) => HalamanUtama(),
        '/detail': (context) => HalamanDetail(),
        '/about' : (context) => TentangAplikasi(),
      },
    );
  }
}

