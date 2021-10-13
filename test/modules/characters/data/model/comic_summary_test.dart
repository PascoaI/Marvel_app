import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/src/modules/characters/data/model/comic_list_model.dart';
import 'package:marvel_app/src/modules/characters/data/model/comic_summary_model.dart';

void main() {
  var response;
  ComicSummaryModel? comics;

  setUp(() async {
    response = {
      "resourceURI": "A",
      "name": "B"
    };
  });

  group('ComicsModel Json Parser', () {
    test('[ comics ] should be parsed', () {
      comics = ComicSummaryModel.fromJson(response);
      expect(comics!, equals(isNotNull));
    });

    test('name should be [B] ', () {
      expect(comics!.name, 'B');
    });
  });
}
