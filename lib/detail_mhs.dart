import 'package:flutter/material.dart';

class DetailMhs extends StatelessWidget {
  const DetailMhs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Mhs'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.person,
              size: 150,
            ),
            Text(
              'Ki Ageng Nasrokh MP',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '220605110109',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Bojonegoro 7 juni 2004',
              style: TextStyle(fontSize: 18),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Kembali'))
          ],
        ),
      ),
    );
  }
}
