import 'package:marvel_app/src/modules/characters/data/model/data_character_model.dart';

abstract class CharacterRepository {
  Future<CharacterDataContainerModel> call(String characterId);
}
