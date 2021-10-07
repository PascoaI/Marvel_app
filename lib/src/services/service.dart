import 'dart:async';
import 'package:dio/dio.dart';


class Service {
  final Dio dio;


  Service(this.dio);

  Future<dynamic> get(String url, {Map<String, dynamic> param}) async {
    var uri;
    uri = Uri.parse('$url/$param}');
    try {
      var response = await dio.get(uri.toString());
      return response.data;
    }
    on DioError catch (e) {
      throw Exception(e.message);
    }
  }
}
