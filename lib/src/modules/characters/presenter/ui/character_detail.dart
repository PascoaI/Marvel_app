import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:marvel_app/src/modules/characters/data/model/characters_model.dart';
import 'package:marvel_app/src/modules/characters/presenter/bloc/character_bloc.dart';

class CharacterDetail extends StatefulWidget {
  final CharacterModel char;

  const CharacterDetail({Key? key, required this.char}) : super(key: key);

  @override
  CharacterDetailState createState() {
    return CharacterDetailState();
  }
}

class CharacterDetailState extends State<CharacterDetail>
    with SingleTickerProviderStateMixin {
  CharacterBloc bloc = GetIt.instance<CharacterBloc>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          "Detalhes do Personagem"
        ),
      ),
      body: Center(
        child: _buildRow(),
        ),
    );
  }

  Widget _buildRow() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildContent(),
        ],
      ),
    );
  }


  Widget _buildContent() {
    return Expanded(
      child: ListView(
        children: <Widget>[



          //TENTANDO BUILD SÓ COM AS VARIAVEIS SIMPLES


          // _buildImage(),
          // SizedBox(height: 16.0),
          _buildTitle(),
          SizedBox(height: 8.0),
          _buildDescription(),
          // SizedBox(height: 8.0),
          // _buildComics(),
        ],
      ),
    );
  }

  // Widget _buildImage() {
  // }
  //
  // Widget _buildComics() {
  //   return ListView.builder(
  //     padding: EdgeInsets.all(4.0),
  //     itemCount: snapshot.data.char.comics.lenght
  //     itemBuilder: (context, position) {
  //       return _buildCard(snapshot.data.char.comics[position], position);
  //     },
  //   );
  // }


  Widget _buildTitle() {
    return Container(
      width: double.infinity,
      child: Text(
        widget.char.name,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
    );
  }


  Widget _buildDescription() {
    return Container(
      width: double.infinity,
      child: Text(
        widget.char.description,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
    );
  }





}
