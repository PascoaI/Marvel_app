
import 'package:marvel_app/src/modules/characters/data/model/characters_model.dart';
import 'package:marvel_app/src/modules/characters/domain/repositories/characters_repository.dart';

abstract class CharacterUseCase {
  Future<CharacterModel> call(String characterId);
}

class CharacterUseCaseImpl implements CharacterUseCase {
  final CharacterRepository repository;

  CharacterUseCaseImpl(this.repository);

  @override
  Future<CharacterModel> call(String characterId) async =>
      repository(characterId);
}
