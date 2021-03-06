import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share/share.dart';

class GifPage extends StatelessWidget {
  final Map _gifData;

  GifPage(this._gifData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          title: Text(
            _gifData["title"],
            style: TextStyle(fontSize: 16),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          actions: [
            IconButton(
                onPressed: () {
                  Share.share(_gifData["images"]["fixed_height"]["url"]);
                },
                icon: Icon(Icons.share))
          ],
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Image.network(
            _gifData["images"]["fixed_height"]["url"],
            height: 330.0,
            fit: BoxFit.cover,
          ),
        ));
  }
}
