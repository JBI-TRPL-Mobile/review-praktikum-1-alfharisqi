import 'package:flutter/material.dart';

class HalamanDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String>? buku = ModalRoute.of(context)?.settings.arguments as Map<String, String>?;

    if (buku == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Detail Buku'),
        ),
        body: const Center(
          child: Text('Data buku tidak tersedia'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(buku['judul'] ?? 'Judul Tidak Diketahui'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(buku['gambar']!, height: 200), // Menampilkan gambar buku
            const SizedBox(height: 16),
            Text(
              'Judul: ${buku['judul']}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Penulis: ${buku['penulis'] ?? 'Penulis Tidak Diketahui'}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            Text(
              'Deskripsi: ${buku['deskripsi'] ?? 'Deskripsi tidak tersedia.'}',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
