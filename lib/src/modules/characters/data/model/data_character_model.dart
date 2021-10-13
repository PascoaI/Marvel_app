import 'package:marvel_app/src/models/base_model.dart';
import 'package:marvel_app/src/modules/characters/data/model/characters_model.dart';
import 'package:marvel_app/src/modules/characters/domain/entities/characters.dart';
import 'package:marvel_app/src/modules/characters/domain/entities/data.dart';


class CharacterDataContainerModel extends CharacterDataContainer implements BaseModel {
  CharacterDataContainerModel(int offset,
      int limit,
      int total,
      int count,
      List<Character> results) : super(offset, limit, total, count, results);

  factory CharacterDataContainerModel.fromJson(Map json) {
    List<Character> results = (json["results"] == null)
    ? []
    : (json["results"] as List)
        .map((i) => CharacterModel.fromJson(i['character']))
        .toList();

    return CharacterDataContainerModel(
    json['offset'] ?? '',
    json['limit'] ?? '',
    json['total'] ?? '',
    json['count'] ?? '',
    results);
  }

  @override
  toMap() {
    throw UnimplementedError();
  }


}
