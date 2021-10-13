import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/src/base/data_base.dart';
import 'package:marvel_app/src/modules/characters/data/model/characters_model.dart';
import 'package:marvel_app/src/modules/characters/data/model/data_character_model.dart';
import 'package:marvel_app/src/modules/characters/data/repositories/characters_repository_impl.dart';
import 'package:marvel_app/src/modules/characters/domain/entities/characters.dart';
import 'package:marvel_app/src/modules/characters/domain/entities/data.dart';
import 'package:marvel_app/src/modules/characters/domain/repositories/characters_repository.dart';
import 'package:marvel_app/src/modules/characters/domain/usecases/characters_use_case.dart';
import 'package:mockito/mockito.dart';

class CharacterMock extends Mock implements CharacterRepository {}

main() {
  late CharacterUseCase useCase;
  late CharacterRepository repository;
  String characterId = '1';
  List<Character> list = [];


  setUp(() async {
    repository = CharacterMock();
    useCase = CharacterUseCaseImpl(repository);
  });


  group('Character Repository usecase', () {
    test('getCharacters', () async {
      when(repository(characterId))
          .thenAnswer((_) async => CharacterDataContainerModel(1,2,3,4,list));

      var response = await useCase(characterId);
      expect(response, isA<CharacterDataContainerModel>());
    });
  });
}
