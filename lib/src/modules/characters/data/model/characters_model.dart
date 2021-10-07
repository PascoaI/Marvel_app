
import 'package:marvel_app/src/models/base_model.dart';
import 'package:marvel_app/src/modules/characters/data/model/comics_model.dart';
import 'package:marvel_app/src/modules/characters/domain/entities/characters.dart';
import 'package:marvel_app/src/modules/characters/domain/entities/comics.dart';
import 'package:marvel_app/src/modules/characters/domain/entities/image.dart';

class CharacterModel extends Character implements BaseModel {
  CharacterModel(
  int id,
  String name,
  String description,
  Image thumbnail,
  ComicList comics): super(id, name, description, thumbnail, comics);

  factory CharacterModel.fromJson(Map json) {
    var comics = json.containsKey('comics')
        ? (json['comics'] as List)
        .map((i) => new ComicsModel.fromJson(i['comic']))
        .toList()
        : null;



    return CharacterModel(
        json['id'] ?? '',
        json['name'] ?? '',
        json['description'] ?? '',
        json['image'] ?? '',
        ComicsModel.fromJson(json['comics']) ?? null);
  }

  @override
  toMap() {
    // TODO: implement toMap
    throw UnimplementedError();
  }
}
