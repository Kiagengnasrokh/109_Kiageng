import 'package:flutter/material.dart';
import 'package:incu/detail_mhs.dart';

class ListMhs extends StatelessWidget {
  const ListMhs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mahasiswa'),
        ),
        body: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailMhs(),
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
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
                    ],
                  ),
                ),
              ),
              Divider(thickness: 2),
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.person,
                        size: 150,
                      ),
                      Text(
                        'Muhammad Andre',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '220605110126',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Bekasi 5 Sebtember 2003',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(thickness: 2),
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.person,
                        size: 150,
                      ),
                      Text(
                        'Muhammad Zidan',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '220605110114',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Lumajang 26 Juli 2004',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}