import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/src/modules/characters/data/model/characters_model.dart';

void main() {
  var response;
  var character;

  setUp(() async {
    response = {
      "id": "A",
      "name": "B",
      "description": "C",
      "thumbnail": {
        "path": "D",
        "extension": "E",
      },
      "comics": {
        "items": [
          {
            "name": "F"
          }
        ]
      },
    };
  });

  group('CharacterModel Json Parser', () {
    test('[ character ] should be parsed', () {
      character = CharacterModel.fromJson(response);
      expect(character, equals(isNotNull));
    });

    test('id should be [A] ', () {
      expect(character.id, 'A');
    });

    test('name should be [B] ', () {
      expect(character.name, 'B');
    });

    test('description should be [C] ', () {
      expect(character.description, 'C');
    });


    test('comics size should be 1 ', () {
      expect(character.comics.length, 1);
    });
  });
}
