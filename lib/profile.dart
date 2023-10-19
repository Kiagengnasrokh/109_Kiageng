import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(24),
            child: CircleAvatar(
              radius: 85,
              backgroundColor: Colors.red,
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/fotoku.jpeg'),
              ),
            ),
          ),
          Text(
            'Ki Ageng Nasrokh MP ',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.all(24),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
              ),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                Row(children: [
                  Icon(Icons.email),
                  Text('Kiagengnasrokh23@gmail.com'),
                ]),
                Row(children: [
                  Icon(Icons.location_on_outlined),
                  Text('Bojonegoro'),
                ]),
                Row(children: [
                  Icon(Icons.phone),
                  Text('08573241091'),
                ]),
              ],
            ),
          )
        ],
      )),
    );
  }
}
