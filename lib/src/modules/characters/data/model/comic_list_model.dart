import 'package:marvel_app/src/models/base_model.dart';
import 'package:marvel_app/src/modules/characters/data/model/comic_summary_model.dart';
import 'package:marvel_app/src/modules/characters/domain/entities/comic_summary.dart';
import 'package:marvel_app/src/modules/characters/domain/entities/comics_list.dart';
import 'package:marvel_app/src/modules/characters/domain/entities/image.dart';

class ComicListModel extends ComicList implements BaseModel {
  ComicListModel(int available, int returned, String collectionURI, List<ComicSummaryModel>? items)
      : super(available, returned, collectionURI, items!);

  factory ComicListModel.fromJson(Map json){
    List<ComicSummaryModel> items = (json["items"] == null)
    ? []
    : (json["items"] as List)
        .map((i) => ComicSummaryModel.fromJson(i['item']))
        .toList();
    {
      return ComicListModel(json['available'] ?? '', json['returned'] ?? '',
          json['collectionURI'] ?? '', items);
    }
  }

  @override
  toMap() {
    throw UnimplementedError();
  }
}


