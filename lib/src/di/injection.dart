import 'package:get_it/get_it.dart';
import 'package:marvel_app/src/modules/characters/data/datasources/characters_datasource.dart';
import 'package:marvel_app/src/modules/characters/data/repositories/characters_repository_impl.dart';
import 'package:marvel_app/src/modules/characters/domain/repositories/characters_repository.dart';
import 'package:marvel_app/src/modules/characters/domain/usecases/characters_use_case.dart';
import 'package:marvel_app/src/modules/characters/presenter/bloc/character_bloc.dart';


GetIt _getIt = GetIt.instance;

void setupDependenceInjection() {
  setUpCharacter();
}

void setUpCharacter() {
  _getIt.registerFactory<CharacterDataSource>(() => CharacterDataSource());

  _getIt.registerFactory<CharacterRepository>(
      () => CharacterRepositoryImpl(_getIt<CharacterDataSource>()));

  _getIt.registerFactory<CharacterUseCase>(
      () => CharacterUseCaseImpl(_getIt<CharacterRepository>()));

  _getIt.registerFactory<CharacterBloc>(
      () => CharacterBloc(_getIt<CharacterUseCase>()));
}
