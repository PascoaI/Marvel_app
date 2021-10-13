import 'package:marvel_app/src/models/base_model.dart';
import 'package:marvel_app/src/modules/characters/domain/entities/image.dart';

class ThumbnailModel extends Thumbnail implements BaseModel {
  ThumbnailModel(path, extension)
      : super(path, extension);

  factory ThumbnailModel.fromJson(Map json) {
    return ThumbnailModel(json['path'] ?? '', json['extension'] ?? '');
  }

  @override
  toMap() {
    // TODO: implement toMap
    throw UnimplementedError();
  }
}
