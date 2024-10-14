import 'package:flutter/material.dart';
import 'package:template_project/tentang_aplikasi.dart';
import 'halaman_utama.dart';
import 'halaman_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Katalog Buku',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HalamanUtama(),
        '/detail': (context) => HalamanDetail(),
        '/tentang' : (context) => Ten()
      },
    );
  }
}
