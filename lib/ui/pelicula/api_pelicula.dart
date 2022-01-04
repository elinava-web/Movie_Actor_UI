import 'package:nava/ui/modelo/cls_pelicula_actor.dart';

final Pelicula probarPelicula = Pelicula(
  bannerUrl: 'assets/images/banner.png',
  posterUrl: 'assets/images/poster.png',
  titulo: 'La Vida Secreta de las Mascotas',
  rating: 8.0,
  starRating: 4,
  categorias: [
    'Animacion',
    'Comedia'
  ],
  trama: 'For their fifth fully-animated feature-film '
      'collaboration, Illumination Entertainment and Universal '
      'Pictures present La Vida Secreta de las Mascotas, a comedy about '
      'the lives our...',
  fotoUrls: [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png',
  ],
  actores: [
    Actor(
      nombre: 'Louis C.K.',
      avatarUrl: 'assets/images/louis.png',
    ),
    Actor(
      nombre: 'Eric Stonestreet',
      avatarUrl: 'assets/images/eric.png',
    ),
    Actor(
      nombre: 'Kevin Hart',
      avatarUrl: 'assets/images/kevin.png',
    ),
    Actor(
      nombre: 'Jenny Slate',
      avatarUrl: 'assets/images/jenny.png',
    ),
    Actor(
      nombre: 'Ellie Kemper',
      avatarUrl: 'assets/images/ellie.png',
    ),
  ],
);
