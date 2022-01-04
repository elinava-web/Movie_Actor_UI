import 'package:flutter/material.dart';
import 'package:nava/ui/pelicula/api_pelicula.dart';
import 'package:nava/ui/pelicula/pagina_detalles_pelicula.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: const Color(0xFFFF5959),
      ),
      home: MovieDetailsPage(probarPelicula),
    );
  }
}
