import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/src/modules/characters/data/model/characters_model.dart';
import 'package:marvel_app/src/modules/characters/domain/repositories/characters_repository.dart';
import 'package:marvel_app/src/modules/characters/domain/usecases/characters_use_case.dart';
import 'package:mockito/mockito.dart';

class RepositoryMock extends Mock implements CharacterRepository {}

main() {
  CharacterUseCase useCase;
  CharacterRepository repository;
  String characterId;

  setUp(() async {
    repository = RepositoryMock();
    useCase = CharacterUseCaseImpl(repository);
  });

  group('Character Use Case', () {
    test('getCharacters', () async {
      when(repository(characterId))
          .thenAnswer((_) async => CharacterModel(null,null,null,null,null));

      var response = await useCase(characterId);
      expect(response, isA<CharacterModel>());
    });
  });
}
