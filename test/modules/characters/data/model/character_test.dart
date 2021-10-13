import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/src/modules/characters/data/model/characters_model.dart';

void main() {
  var response;
  CharacterModel? character;

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
        "available": "F",
        "returned": "G",
        "collectionURI": "H",
        "items": [
          {
            "resourceURI": "I",
            "name": "J"
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

    test('name should be [B] ', () {
      expect(character!.name, 'B');
    });

    test('description should be [C] ', () {
      expect(character!.description, 'C');
    });


    test('comics items size should be 1 ', () {
      expect(character!.comics.items.length, 1);
    });
  });
}
