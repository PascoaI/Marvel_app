import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/src/base/data_base.dart';
import 'package:marvel_app/src/modules/characters/data/model/characters_model.dart';
import 'package:marvel_app/src/modules/characters/data/model/data_character_model.dart';
import 'package:marvel_app/src/modules/characters/data/repositories/characters_repository_impl.dart';
import 'package:marvel_app/src/modules/characters/domain/entities/characters.dart';
import 'package:mockito/mockito.dart';

class DataSourceMock extends Mock implements DataSource {}

main() {
  DataSourceMock? mock;
  late CharacterRepositoryImpl repository;
  late String characterId = 'a';
  late List<Character> list = [];

  setUp(() async {});

  group('Character Use Case', () {
    test('getCharacters', () async {
      //
      when(repository(characterId))
          .thenAnswer((_) async => CharacterDataContainerModel(1,2,3,4,list));

      // when(() => mock<CharacterDataContainerModel>(fromJson: any(named:"fromJson"))).thenAnswer((_) async => CharacterDataContainerModel(list));
      repository = CharacterRepositoryImpl(mock!);
      var response = await repository(characterId);
      expect(response, isA<CharacterModel>());
    });
  });
}
