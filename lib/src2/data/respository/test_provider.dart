import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:http/http.dart' as http;
import 'package:test_flutter/src2/data/models/test_model.dart';

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

  Future<TestModel> getTestByCacheLib() async {
    var file = await DefaultCacheManager().getSingleFile(_baseUrl.toString());
    var data = testModelFromJson(file.readAsStringSync());

    if (data == null) {
      throw Exception("Failed to load joke");
    } else {
      return data;
    }
  }
}
