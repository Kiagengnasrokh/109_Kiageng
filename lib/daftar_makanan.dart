import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'detail.dart';
import 'model.dart';

class DaftarMakanan extends StatelessWidget {
  const DaftarMakanan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daftar Makanan')),
      backgroundColor: Colors.blueGrey[50],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
          itemCount: listData.length,
          itemBuilder: (context, index) => ListWidget(model: listData[index]),
        ),
      ),
    );
  }
}

class ListWidget extends StatelessWidget {
  final Model model;
  const ListWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsWidget(model: model),
            ));
      },
      child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          margin: EdgeInsets.symmetric(vertical: 8),
          elevation: 5,
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.width / 2.7,
                child: Image.asset(
                  model.url,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(model.title,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                      Text(model.subtitle),
                      // Expanded(child: Container()),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [ButtonCount(), Text('\$40')],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class ButtonCount extends StatelessWidget {
  const ButtonCount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
      child: Container(
        height: 30,
        color: Colors.amber,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {},
                visualDensity: VisualDensity.compact,
                icon: Icon(
                  Icons.remove,
                  size: 14,
                )),
            Text('1'),
            IconButton(
                onPressed: () {},
                visualDensity: VisualDensity.compact,
                icon: Icon(
                  Icons.add,
                  size: 14,
                ))
          ],
        ),
      ),
    );
  }
}
