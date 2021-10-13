import 'package:marvel_app/src/modules/characters/domain/entities/comic_summary.dart';

class ComicList{
  final int available;
  final int returned;
  final String collectionURI;
  final List<ComicSummary> items;

  ComicList(this.available, this.returned, this.collectionURI, this.items
);

}