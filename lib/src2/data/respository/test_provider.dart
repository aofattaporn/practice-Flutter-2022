import 'package:test_flutter/src2/data/models/test_model.dart';
import 'package:http/http.dart' as http;


class TestRepository {
  final String _baseUrl = "https://api.covid19api.com/summary";

  Future<TestModel> getTest() async {
    final response = await http.get(Uri.parse(_baseUrl));
    if (response.statusCode == 200) {
      print(response.body);
      return testModelFromJson(response.body);
    } else {
      throw Exception("Failed to load joke");
    }
  }
}