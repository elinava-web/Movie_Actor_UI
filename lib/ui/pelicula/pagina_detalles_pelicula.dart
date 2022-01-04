import 'package:flutter/material.dart';
import 'package:nava/ui/Actor/desplegar_actor.dart';
import 'package:nava/ui/modelo/cls_pelicula_actor.dart';
import 'package:nava/ui/pelicula/encabezado_detalle_pelicula.dart';
import 'package:nava/ui/desplegar_foto.dart';
import 'package:nava/ui/pelicula/trama.dart';

class MovieDetailsPage extends StatelessWidget {
  MovieDetailsPage(this.movie);
  final Pelicula movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MovieDetailHeader(movie),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Storyline(movie.trama),
            ),
            PhotoScroller(movie.fotoUrls),
            SizedBox(height: 20.0),
            DesplegarActor(movie.actores),
            SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}
