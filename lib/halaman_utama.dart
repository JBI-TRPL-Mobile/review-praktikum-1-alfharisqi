import 'package:flutter/material.dart';

class HalamanUtama extends StatelessWidget {
  final List<Map<String, String>> buku = [
    {
      'judul' : 'Flutter Basic'
    },
    {
      'judul' : 'Dart Mastery'
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
              Navigation.pushNamed(
                context,
                '/detail',
                  argument: buku[index]
              );
            },
          );
        },
      ),
    );
  }
}