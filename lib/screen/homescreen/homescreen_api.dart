import 'package:api/service/http_services.dart';
import 'package:http/http.dart' as http;

import '../../model/model.dart';
import '../../utils/apires.dart';

class HomeScreenApi {
  static Future getData() async {
    try {
      http.Response? response =
          await HttpService.getApi(url: ApiRes.productAPI);
      if (response != null && response.statusCode == 200) {
        return productModelFromJson(response.body);
      }
    } catch (e) {
      print(e);
      return null;
    }
  }

  // static Future addData(Map<String, dynamic> body) async {
  //   try {} catch (e) {
  //     print(e);
  //     return null;
  //   }
  // }
}
