import 'package:marvel_app/src/models/base_model.dart';
import 'package:marvel_app/src/modules/characters/data/model/comic_list_model.dart';
import 'package:marvel_app/src/modules/characters/data/model/thumbnail_model.dart';
import 'package:marvel_app/src/modules/characters/domain/entities/characters.dart';
import 'package:marvel_app/src/modules/characters/domain/entities/comics_list.dart';
import 'package:marvel_app/src/modules/characters/domain/entities/image.dart';

class CharacterModel extends Character implements BaseModel {
  CharacterModel(
  int id,
  String name,
  String description,
  Thumbnail? thumbnail,
  ComicList? comics): super(id, name, description, thumbnail!, comics!);

  factory CharacterModel.fromJson(Map json) {
      return CharacterModel(
        json['id'] ?? '',
        json['name'] ?? '',
        json['description'] ?? '',
          (json['thumbnail'] == null
              ? null
              : ThumbnailModel.fromJson(json['thumbnail'])),
          (json['comics'] == null
              ? null
              : ComicListModel.fromJson(json['comics'])));
  }

  @override
  toMap() {
    // TODO: implement toMap
    throw UnimplementedError();
  }
}
