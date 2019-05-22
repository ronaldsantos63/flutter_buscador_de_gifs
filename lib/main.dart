import 'package:flutter/material.dart';
import 'package:flutter_buscar_gif/ui/home_page.dart';

void main(){
  runApp(MaterialApp(
    title: "Buscador de Gifs",
    theme: ThemeData(
      hintColor: Colors.white,
      brightness: Brightness.dark
    ),
    home: HomePage(),
  ));
}
