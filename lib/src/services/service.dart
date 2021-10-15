import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:crypto/crypto.dart';

class Service {
  final Dio dio;

  String privateKey = "7b1bb7e5b96f5448653025b577edaad78de2504e";
  String publicKey = "f36e7c571ab15f226059261cd311c719";

  var ts = DateTime.now().millisecondsSinceEpoch;

  Service(this.dio, this.ts, this.privateKey, this.publicKey);

  Future<dynamic> get(String url) async {
    var apiKey = ts.toString() + privateKey + publicKey;
    var hash = md5.convert(utf8.encode(apiKey)).toString();
    var uri = Uri.parse(
        "$url?ts=$ts&apikey=$publicKey&hash=$hash&limit=10");

    try {
      var response = await dio.get(uri.toString());
      return response.data;
    }
    on DioError catch (e) {
      throw Exception(e.message);
    }
  }
}





