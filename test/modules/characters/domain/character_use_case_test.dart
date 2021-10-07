import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/src/base/data_base.dart';
import 'package:marvel_app/src/modules/characters/data/model/characters_model.dart';
import 'package:marvel_app/src/modules/characters/data/repositories/characters_repository_impl.dart';
import 'package:mockito/mockito.dart';

class DataSourceMock extends Mock implements DataSource {}

main() {
  DataSourceMock mock;
  CharacterRepositoryImpl repository;
  String characterId;

  setUp(() async {});

  group('Character Repository usecase', () {
    test('call', () async {
      mock = DataSourceMock();
      when(mock<CharacterModel>(fromJson: anyNamed('fromJson')))
          .thenAnswer((_) async => CharacterModel(null, null, null, null, null));
      repository = CharacterRepositoryImpl(mock);
      var response = await repository(characterId);

      expect(response, isA<CharacterModel>());
    });
  });
}
