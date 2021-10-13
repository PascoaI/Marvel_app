import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/src/modules/characters/data/model/comic_list_model.dart';

void main() {
  var response;
  var comics;

  setUp(() async {
    response = {
      "resourceURI": "A",
      "name": "B"
    };
  });

  group('ComicsModel Json Parser', () {
    test('[ comics ] should be parsed', () {
      comics = ComicListModel.fromJson(response);
      expect(comics, equals(isNotNull));
    });

    test('name should be [B] ', () {
      expect(comics.name, 'B');
    });
  });
}
