import 'package:flutter/material.dart';

class HalamanUtama extends StatelessWidget {
  final List<Map<String, String>> buku = [
    {
      'judul': 'Flutter Basic',
      'penulis': 'John Doe',
      'gambar' : 'foto/bukuflutterbasic.jpg'
    },
    {
      'judul': 'Dart Mastery',
      'penulis': 'Jane Doe',
      'gambar' : 'foto/bukumasterydart.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Buku'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              Navigator.pushNamed(context, '/tentang');
            },
          ),
        ],
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
                arguments: buku[index],
              );
            },
          );
        },
      ),
    );
  }
}
