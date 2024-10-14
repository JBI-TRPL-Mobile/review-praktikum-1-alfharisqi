import 'package:flutter/material.dart';

class HalamanUtama extends StatelessWidget {
  final List<Map<String, String>> buku = [
    {
      'judul' : 'Flutter Basic',
      'penulis' : 'John Doe',
      'deskripsi' : 'A comprehensive guide for flutter development.'
    },
    {
      'judul' : 'Dart Mastery',
      'penulis' : 'John Doe',
      'deskripsi' : 'A comprehensive guide for flutter development.'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Buku'),
      ),
      body: ListView.builder(
        itemCount: buku.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(buku[index]['judul']!),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/detail',
                  arguments: buku[index]
              );
            },
          );
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(title: Text('Tentang Aplikasi'),
            onTap: (){
              Navigator.pushNamed(context, '/about');
            },
            )
          ],
        ),
      ),
    );
  }
}