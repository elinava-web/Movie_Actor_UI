import 'package:flutter/material.dart';
import 'package:nava/ui/arc_banner_image.dart';
import 'package:nava/ui/modelo/cls_pelicula_actor.dart';
import 'package:nava/ui/poster.dart';
import 'package:nava/ui/pelicula/informar_rating.dart';

class MovieDetailHeader extends StatelessWidget {
  MovieDetailHeader(this.pelicula);
  final Pelicula pelicula;

  List<Widget> _construirCategoria(TextTheme textTheme) {
    return pelicula.categorias.map((category) {
      return Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Chip(
          label: Text(category),
          labelStyle: textTheme.caption,
          backgroundColor: Colors.black12,
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    var informacionPelicula = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          pelicula.titulo,
          style: textTheme.headline6,
        ),
        SizedBox(height: 8.0),
        RatingInformation(pelicula),
        SizedBox(height: 12.0),
        Row(children: _construirCategoria(textTheme)),
      ],
    );

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 140.0),
          child: ArcBannerImage(pelicula.bannerUrl),
        ),
        Positioned(
          bottom: 0.0,
          left: 16.0,
          right: 16.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Poster(
                pelicula.posterUrl,
                height: 180.0,
              ),
              SizedBox(width: 16.0),
              Expanded(child: informacionPelicula),
            ],
          ),
        ),
      ],
    );
  }
}
