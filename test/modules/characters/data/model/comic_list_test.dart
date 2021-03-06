import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/src/modules/characters/data/model/comic_list_model.dart';

void main() {
  var response;
  ComicListModel? comics;

  setUp(() async {
    response = {
        "available": "1",
        "returned": "2",
        "collectionURI": "C",
        "items": [
          {
            "resourceURI": "D",
            "name": "E"
          }
        ]
    };
  });

  group('ComicsModel Json Parser', () {
    test('[ comics ] should be parsed', () {
      comics = ComicListModel.fromJson(response);
      expect(comics, equals(isNotNull));
    });

    test('Available should be [1] ', () {
      expect(comics!.available, 1);
    });

    test('items array size should be [1] ', () {
      expect(comics!.items.length, 1);
    });
  });
}
