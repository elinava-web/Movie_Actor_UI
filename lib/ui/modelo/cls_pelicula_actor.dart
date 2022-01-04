class Pelicula {
  Pelicula({
    required this.bannerUrl,
    required this.posterUrl,
    required this.titulo,
    required this.rating,
    required this.starRating,
    required this.categorias,
    required this.trama,
    required this.fotoUrls,
    required this.actores,
  });

  final String bannerUrl;
  final String posterUrl;
  final String titulo;
  final double rating;
  final int starRating;
  final List<String> categorias;
  final String trama;
  final List<String> fotoUrls;
  final List<Actor> actores;
}

class Actor {
  Actor({
    required this.nombre,
    required this.avatarUrl,
  });

  final String nombre;
  final String avatarUrl;
}
