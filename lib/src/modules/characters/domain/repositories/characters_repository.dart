import 'package:marvel_app/src/modules/characters/data/model/characters_model.dart';

abstract class CharacterRepository {
  Future<CharacterModel> call(String id);
}
