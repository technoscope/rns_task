import 'dart:convert';
import 'package:rns_task/BreweryModel.dart';
import 'package:http/http.dart'as http;
class URLS {
  static const String BASE_URL = 'https://api.openbrewerydb.org';
}
class ApiProvider {
  Future<List<BreweryModel>> getbrewerylist() async {
    http.Response response = await http.get(Uri.parse('${URLS.BASE_URL}/breweries'));
    var _brewerylist = List<BreweryModel>();
    if (response.statusCode == 200) {
      var breweryJson = json.decode(response.body);
      for (var json in breweryJson) {
        print(json);
        _brewerylist.add(BreweryModel.fromJson(json));
      }
      return _brewerylist;
    }
  }
}