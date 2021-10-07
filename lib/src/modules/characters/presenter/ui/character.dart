// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:marvel_app/src/modules/characters/data/model/characters_model.dart';
import 'package:marvel_app/src/modules/characters/domain/entities/characters.dart';
import 'package:marvel_app/src/modules/characters/presenter/bloc/character_bloc.dart';
import 'package:marvel_app/src/modules/characters/presenter/ui/character_detail.dart';


class CharacterView extends StatefulWidget {
  final String characterId;
  const CharacterView({Key key, @required this.characterId})
      : super(key: key);
  @override
  CharacterViewState createState() {
    return CharacterViewState();
  }
}

class CharacterViewState extends State<CharacterView>
    with SingleTickerProviderStateMixin {
  CharacterBloc bloc = GetIt.instance<CharacterBloc>();

  @override
  void initState() {
    super.initState();
    bloc.getCharacters(widget.characterId);
  }

  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('MARVEL'),
      ),
      body: StreamBuilder(
        stream: bloc.charStream,
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return _buildList(snapshot);
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Widget _buildList(AsyncSnapshot snapshot) {
    return ListView.builder(
      padding: EdgeInsets.all(12.0),
      itemCount: snapshot.data.char.lenght,
      itemBuilder: (context, position) {
        return _buildCard(snapshot.data.char[position], position);
      },
    );
  }

  Widget _buildCard(CharacterModel char, int position) {
    return InkWell(
        onTap: () => _onCharacterDetail(char),
        child: Card(color: Colors.grey[80], child: _buildRow(char)));
  }

  Widget _buildRow(CharacterModel char) {
    return Padding(
        padding: EdgeInsets.all(12.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _firstColumn(char),
            ]));
  }

  
  Widget _firstColumn(CharacterModel char) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            char.name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10.0),

        //IMAGE//
          SizedBox(height: 4.0),

        ],
      ),
    );
  }

  Function _onCharacterDetail(CharacterModel char) {

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return CharacterDetail(char: char);
      }),
    );
  }
}
