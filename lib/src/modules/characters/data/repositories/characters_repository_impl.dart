import 'package:marvel_app/src/base/data_base.dart';
import 'package:marvel_app/src/modules/characters/data/model/characters_model.dart';
import 'package:marvel_app/src/modules/characters/domain/repositories/characters_repository.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  final DataSource _dataSource;

  CharacterRepositoryImpl(this._dataSource);

  @override
  Future<CharacterModel> call(String characterId) async {
    Map<String, dynamic> parameter = Map();

    parameter['characterId'] = characterId;

    return await _dataSource(
        param: parameter,
        fromJson: (json) => CharacterModel.fromJson(json));
  }
}
