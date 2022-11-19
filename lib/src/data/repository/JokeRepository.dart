import 'package:http/http.dart' as http;

import '../model/joke_model.dart';

class JokeRepository {
  final String _baseUrl = "https://v2.jokeapi.dev/joke/Any";

  Future<JokeModel> getJoke() async {
    var url = Uri.https(_baseUrl, '');

    final response = await http.get(url);
    if (response.statusCode == 200) {

      // print(response.body);

      return jokeModelFromJson(response.body);
    } else {
      throw Exception("Failed to load joke");
    }
  }

  String getMock(){
    return "mock Data";
  }

}
