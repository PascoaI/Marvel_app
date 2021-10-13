import 'package:marvel_app/src/models/base_model.dart';
import 'package:marvel_app/src/modules/characters/domain/entities/comic_summary.dart';


class ComicSummaryModel extends ComicSummary implements BaseModel {
  ComicSummaryModel(String resourceURI, String name) : super(resourceURI, name);

  factory ComicSummaryModel.fromJson(Map json) {
    return ComicSummaryModel(
    json['resourceURI'] ?? '',
    json['name'] ?? '');
  }

  @override
  toMap() {
    throw UnimplementedError();
  }


}
