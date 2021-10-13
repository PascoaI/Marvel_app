import 'package:marvel_app/src/models/base_model.dart';
import 'package:marvel_app/src/modules/characters/domain/entities/data.dart';

import 'data_character_model.dart';

class CharacterDataWrapperModel extends CharacterDataWrapper implements BaseModel {
  CharacterDataWrapperModel(
      int code,
      String status,
      CharacterDataContainer? char): super(code, status, char!);

  factory CharacterDataWrapperModel.fromJson(Map json) {
    return CharacterDataWrapperModel(
        json['code'] ?? '',
        json['status'] ?? '',
        (json[''] == null
            ? null
            : CharacterDataContainerModel.fromJson(json['data'])),);
  }

  @override
  toMap() {
    // TODO: implement toMap
    throw UnimplementedError();
  }
}
