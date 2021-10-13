import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/src/modules/characters/data/model/characters_model.dart';
import 'package:marvel_app/src/modules/characters/data/model/data_character_model.dart';
import 'package:marvel_app/src/modules/characters/data/repositories/characters_repository_impl.dart';
import 'package:marvel_app/src/modules/characters/domain/entities/characters.dart';
import 'package:marvel_app/src/modules/characters/domain/repositories/characters_repository.dart';
import 'package:marvel_app/src/modules/characters/domain/usecases/characters_use_case.dart';
import 'package:mockito/mockito.dart';

class CharacterRepositoryMock extends Mock implements CharacterRepository {}

main() {
  CharacterRepositoryMock mock;
  CharacterRepositoryImpl repository;
  String characterId = 'a';
  List<Character> list = [];

  setUp(() async {});

  group('Character Use Case', () {
    test('getCharacters', () async {
      mock = CharacterRepositoryMock();
      when(repository(characterId))
          .thenAnswer((_) async => CharacterDataContainerModel(1,2,3,4,list));
      // when(() => mock<CharacterDataContainerModel>(fromJson: any(named:"fromJson"))).thenAnswer((_) async => CharacterDataContainerModel(list));
      repository = CharacterRepositoryImpl(mock);
      var response = await repository(characterId);
      expect(response, isA<CharacterModel>());
    });
  });
}
