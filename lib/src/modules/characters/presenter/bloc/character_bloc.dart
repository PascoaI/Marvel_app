import 'dart:async';
import 'package:marvel_app/src/modules/characters/data/model/data_character_model.dart';
import 'package:marvel_app/src/modules/characters/domain/usecases/characters_use_case.dart';

class CharacterBloc {
  final CharacterUseCase characterUseCase;

  CharacterBloc(this.characterUseCase);

  final _charController = StreamController.broadcast();

  Stream get charStream => _charController.stream;

  late CharacterDataContainerModel response;

  getCharacters(String characterId) async {
    try {
      response = await characterUseCase(characterId);
      _charController.sink.add(response);
    } on Exception {
      _charController.sink.addError('Error');
    }
  }

  dispose() {
    _charController.close();
  }
}