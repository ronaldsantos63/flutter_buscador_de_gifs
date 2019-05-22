import 'package:flutter/material.dart';
import 'package:share/share.dart';

class PreviewGifPage extends StatelessWidget {

  final Map _gifData;

  PreviewGifPage(this._gifData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_gifData["title"]),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share, color: Colors.white,),
            onPressed: (){
              Share.share(_gifData['images']['fixed_height']["url"]);
            },
          )
        ],
      ),
      body: Center(
        child: FadeInImage.assetNetwork(
          placeholder: "assets/gif/loading.gif",
          image: _gifData['images']['fixed_height']["url"],
          height: 300,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
