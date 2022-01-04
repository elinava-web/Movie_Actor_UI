import 'package:flutter/material.dart';
import 'package:nava/ui/modelo/cls_pelicula_actor.dart';

class DesplegarActor extends StatelessWidget {
  DesplegarActor(this.actores);
  final List<Actor> actores;

  Widget _construirActor(BuildContext ctx, int index) {
    var actor = actores[index];

    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(actor.avatarUrl),
            radius: 40.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(actor.nombre),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Actors',
            //style: textTheme.subhead.copyWith(fontSize: 18.0),
            style: textTheme.subtitle1!.copyWith(fontSize: 18.0),
          ),
        ),
        SizedBox.fromSize(
          size: const Size.fromHeight(120.0),
          child: ListView.builder(
            itemCount: actores.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(top: 12.0, left: 20.0),
            itemBuilder: _construirActor,
          ),
        ),
      ],
    );
  }
}
