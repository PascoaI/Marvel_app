import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/src/modules/characters/data/model/comic_list_model.dart';
import 'package:marvel_app/src/modules/characters/data/model/thumbnail_model.dart';

void main() {
  var response;
  ThumbnailModel? thumbnail;

  setUp(() async {
    response = {
      "path": "A",
      "extension": "B"
    };
  });

  group('ComicsModel Json Parser', () {
    test('[ comics ] should be parsed', () {
      thumbnail = ThumbnailModel.fromJson(response);
      expect(thumbnail, equals(isNotNull));
    });

    test('path should be [A] ', () {
      expect(thumbnail!.path, 'A');
    });
  });
}
