import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:marvel_app/src/models/base_model.dart';

typedef FromJson<T> = T Function(Map<String, dynamic> json);

abstract class DataSource {
  Future<dynamic> call<T>(
      {Map? param, @required FromJson<T>? fromJson});
}
