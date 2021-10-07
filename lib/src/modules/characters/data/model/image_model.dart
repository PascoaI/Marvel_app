import 'package:marvel_app/src/models/base_model.dart';
import 'package:marvel_app/src/modules/characters/domain/entities/image.dart';

class ImageModel extends Image implements BaseModel {
  ImageModel(path, extension)
      : super(path, extension);

  factory ImageModel.fromJson(Map json) {
    return ImageModel(json['path'] ?? '', json['extension'] ?? '');
  }

  @override
  toMap() {
    // TODO: implement toMap
    throw UnimplementedError();
  }
}
