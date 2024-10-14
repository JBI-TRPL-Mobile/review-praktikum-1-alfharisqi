import 'package:flutter/material.dart';

class TentangAplikasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Aplikasi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Dibuat oleh: Alfha Risqi Wicaksono',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Versi: 1.0',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}