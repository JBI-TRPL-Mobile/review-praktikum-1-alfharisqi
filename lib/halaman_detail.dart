import 'package:flutter/material.dart';

class HalamanDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> buku = ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: Text(buku['judul']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text(
              buku['title']!,
              style: TextStyle(fontSize: 22),
            ),
            Text(
              'Penulis: ${buku['penulis']}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              buku['deskripsi']!,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}