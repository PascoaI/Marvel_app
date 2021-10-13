import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/src/modules/characters/data/model/comic_list_model.dart';

void main() {
  var response;
  var comics;

  setUp(() async {
    response = {
      "comics": {
        "available": "1",
        "returned": "2",
        "collectionURI": "C",
        "items": [
          {
            "resourceURI": "D",
            "name": "E"
          }
        ]
      },
    };
  });

  group('ComicsModel Json Parser', () {
    test('[ comics ] should be parsed', () {
      comics = ComicsModel.fromJson(response);
      expect(comics, equals(isNotNull));
    });

    test('Available should be [1] ', () {
      expect(comics.available, 1);
    });

    test('items array size should be [1] ', () {
      expect(comics.items.lenght, 1);
    });
  });
}
