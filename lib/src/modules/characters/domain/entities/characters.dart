import 'package:marvel_app/src/modules/characters/domain/entities/comics_list.dart';
import 'package:marvel_app/src/modules/characters/domain/entities/image.dart';

class Character{
  final int id;
  final String name;
  final String description;
  final Thumbnail thumbnail;
  final ComicList comics;

  Character(this.id,
      this.name,
      this.description,
      this.thumbnail,
      this.comics);

}