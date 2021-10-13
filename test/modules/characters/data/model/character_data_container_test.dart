import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/src/modules/characters/data/model/data_character_model.dart';
import 'package:marvel_app/src/modules/characters/domain/entities/data.dart';

void main() {
  var response;
  var characterDataContainerModel;

  setUp(() async {
    response = {
      "data": {
        "offset": "int",
        "limit": "int",
        "total": "int",
        "count": "int",
        "results": [
          {
            "id": "int",
            "name": "string",
            "description": "string",
            "modified": "Date",
            "resourceURI": "string",
            "urls": [
              {
                "type": "string",
                "url": "string"
              }
            ],
            "thumbnail": {
              "path": "string",
              "extension": "string"
            },
            "comics": {
              "available": "int",
              "returned": "int",
              "collectionURI": "string",
              "items": [
                {
                  "resourceURI": "string",
                  "name": "string"
                }
              ]
            },
            "stories": {
              "available": "int",
              "returned": "int",
              "collectionURI": "string",
              "items": [
                {
                  "resourceURI": "string",
                  "name": "string",
                  "type": "string"
                }
              ]
            },
            "events": {
              "available": "int",
              "returned": "int",
              "collectionURI": "string",
              "items": [
                {
                  "resourceURI": "string",
                  "name": "string"
                }
              ]
            },
            "series": {
              "available": "int",
              "returned": "int",
              "collectionURI": "string",
              "items": [
                {
                  "resourceURI": "string",
                  "name": "string"
                }
              ]
            }
          }
        ]
      },
      "etag": "string"
    };
  });

  group('CharacterDataContainer Json Parser', () {
    test('[ CharacterDataContainer ] should be parsed', () {
      characterDataContainerModel = CharacterDataContainerModel.fromJson(response);
      expect(characterDataContainerModel, equals(isNotNull));
    });

    test('CharacterDataContainer array size should be 1 ', () {
      expect(characterDataContainerModel.results.length, 1);
    });
  });
}
