import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:marvel_app/src/modules/characters/data/model/characters_model.dart';
import 'package:share/share.dart';
import 'package:ufcspa/src/models/create_subscription_respose.dart';
import 'package:ufcspa/src/modules/events/data/model/event_model.dart';
import 'package:ufcspa/src/modules/events/presenter/bloc/event_detail_bloc.dart';
import 'package:ufcspa/src/ui/colors.dart';
import 'package:ufcspa/src/util/date_util.dart';

import 'event_schedule.dart';

class CharacterDetail extends StatefulWidget {
  final CharacterModel char;

  CharacterDetail({Key key, @required this.char}) : super(key: key);

  @override
  CharacterDetailState createState() {
    return CharacterDetailState();
  }
}

class CharacterDetailState extends State<CharacterDetail>
    with SingleTickerProviderStateMixin {
  CharacterDetailBloc bloc = GetIt.instance<CharacterDetailBloc>();

  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    charDetailBloc.dispose();
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
          _buildImage(),
          SizedBox(height: 16.0),
          _buildTitle(),
          SizedBox(height: 8.0),
          _buildDescription(),
          SizedBox(height: 8.0),
          _buildComics(),
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
        style: TextStyle(
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
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
    );
  }



}
