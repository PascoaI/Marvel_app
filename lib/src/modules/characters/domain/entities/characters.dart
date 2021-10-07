import 'package:flutter/cupertino.dart';
import 'package:marvel_app/src/modules/characters/domain/entities/comics.dart';

class Character{
  final int id;
  final String name;
  final String description;
  final Image thumbnail;
  final ComicList comics;

  Character(this.id,
      this.name,
      this.description,
      this.thumbnail,
      this.comics);

}