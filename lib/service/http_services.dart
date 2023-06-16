import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class HttpService {
  static Future<http.Response?> getApi({required String url}) async {
    try {
      if (kDebugMode) {
        print("Urlll===>$url");
      }
      return await http.get(Uri.parse(url));
    } catch (e) {
      print(e);
      return null;
    }
  }

  static Future postApi(
      {required String url, required Map<String, dynamic> body}) async {
    try {
      if (kDebugMode) {
        print("Urlll===>$url");
        print("Urlll===>$url");
      }
      return await http.post(Uri.parse(url), body: body);
    } catch (e) {
      print(e);
    }
    return null;
  }
}
