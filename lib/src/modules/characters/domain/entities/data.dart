import 'package:marvel_app/src/modules/characters/domain/entities/characters.dart';


class Data{
  final CharacterDataContainer data;

  Data(this.data);
}

class CharacterDataContainer {
  final int offset;
  final int limit;
  final int total;
  final int count;
  final List<Character> results;

  CharacterDataContainer(this.offset, this.limit, this.total, this.count, this.results);

}