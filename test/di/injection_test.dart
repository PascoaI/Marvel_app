import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:marvel_app/src/di/injection.dart';
import 'package:marvel_app/src/modules/characters/data/datasources/characters_datasource.dart';
import 'package:marvel_app/src/modules/characters/domain/repositories/characters_repository.dart';
import 'package:marvel_app/src/modules/characters/domain/usecases/characters_use_case.dart';
import 'package:marvel_app/src/services/service.dart';
import 'package:mockito/mockito.dart';

class InjectionMock extends Mock implements Service {}

main() {
  GetIt getIt = GetIt.instance;
  getIt.allowReassignment = true;

  group('Dependence injection setupCharacter test ', ()
  {
    setUpCharacter();

    test('should return CharacterDataSource', () {
      final result = getIt<CharacterDataSource>();
      expect(result, isA<CharacterDataSource>());
    });

    test('should return CharacterRepository', () {
      final result = getIt<CharacterRepository>();
      expect(result, isA<CharacterRepository>());
    });

    test('should return ClassesOfferedUseCase', () {
      final result = getIt<CharacterUseCase>();
      expect(result, isA<CharacterUseCase>());
    });
  });
}
