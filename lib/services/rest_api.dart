import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map> getTrending() async {
  final API_URL_TRENDING =
      "https://api.giphy.com/v1/gifs/trending?api_key=fxCFXlYvARhkp28kBZ7feKnIxYPZQHrl&limit=20&rating=G";
  http.Response response = await http.get(API_URL_TRENDING);
  return jsonDecode(response.body);
}

Future<Map> search(String query, {int offset = 0}) async {
  final API_URL_SEARCH =
      "https://api.giphy.com/v1/gifs/search?api_key=fxCFXlYvARhkp28kBZ7feKnIxYPZQHrl&q=$query&limit=19&offset=$offset&rating=G&lang=pt";
  http.Response response = await http.get(API_URL_SEARCH);
  return jsonDecode(response.body);
}
