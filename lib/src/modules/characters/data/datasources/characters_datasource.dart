import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:marvel_app/src/base/data_base.dart';
import 'package:marvel_app/src/models/base_model.dart';
import 'package:marvel_app/src/services/service.dart';

class CharacterDataSource implements DataSource {
  Service _service;

  CharacterDataSource();

  @override
  Future<BaseModel> call<T>(
      {Map<String, dynamic> param, @required FromJson<T> fromJson}) async {
    _service = GetIt.instance<Service>();
    String url = 'https://gateway.marvel.com/v1/public/characters/';
    var response = await _service.get(url, param: param);
    var model = fromJson(response);
    return model as BaseModel;
  }
}
