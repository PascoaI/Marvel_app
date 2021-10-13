import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:marvel_app/src/modules/characters/data/datasources/characters_datasource.dart';
import 'package:marvel_app/src/modules/characters/data/model/characters_model.dart';
import 'package:marvel_app/src/modules/characters/data/model/data_character_model.dart';
import 'package:marvel_app/src/services/service.dart';
import 'package:mockito/mockito.dart';

class ServiceMock extends Mock implements Service {}

main() {
  GetIt getIt = GetIt.instance;
  getIt.allowReassignment = true;

  var response =
  {
    "code": "int",
    "status": "string",
    "copyright": "string",
    "attributionText": "string",
    "attributionHTML": "string",
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
        }
      ]
    },
    "etag": "string"
  };

  test('Character Data source test', () async {
    ServiceMock serviceMock = ServiceMock();

    when(serviceMock.get('')).thenAnswer((_) async => response);

    getIt.registerSingleton<Service>(serviceMock);

    CharacterDataSource characterDataSource = CharacterDataSource();

    var model = await characterDataSource(
        fromJson: (json) => CharacterDataContainerModel.fromJson(json));

    expect(model, isA<CharacterDataContainerModel>());
  });
}
