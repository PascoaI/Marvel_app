import 'package:marvel_app/src/base/data_base.dart';
import 'package:marvel_app/src/modules/characters/data/model/data_character_model.dart';
import 'package:marvel_app/src/modules/characters/domain/repositories/characters_repository.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  final DataSource _dataSource;

  CharacterRepositoryImpl(this._dataSource);

  @override
  Future<CharacterDataContainerModel> call(String characterId) async {
    Map<String, dynamic> param = {};

    param['characterId'] = characterId;

    return await _dataSource(
    param: param,
        fromJson: (json) => CharacterDataContainerModel.fromJson(json));
  }
}
