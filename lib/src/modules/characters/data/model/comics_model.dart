import 'package:marvel_app/src/models/base_model.dart';
import 'package:marvel_app/src/modules/characters/domain/entities/comics.dart';
import 'package:marvel_app/src/modules/characters/domain/entities/image.dart';

class ComicsModel extends ComicList implements BaseModel {
  ComicsModel(int available, int returned, String collectionURI, items)
      : super(available, returned, collectionURI, items);

  final int available;
  final int returned;
  final String collectionURI;

  factory ComicsModel.fromJson(Map json){

  var comics = json.containsKey('comics')
      ? (json['comics'] as List)
      .map((i) => new ComicsModel.fromJson(i['comic']))
      .toList()
      : null;
  {
    return ComicsModel(json['available'] ?? '', json['returned'] ?? '',
      json['collectionURI'] ?? '', comics);
  }



  @override
  toMap() {
    throw UnimplementedError();
  }
}
