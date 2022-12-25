import 'dart:convert';

TestModel testModelFromJson(String str) => TestModel.fromJson(json.decode(str));

String testModelToJson(TestModel data) => json.encode(data.toJson());

class TestModel {
  String? id;
  String? error;

  TestModel({
    required this.id,
  });

  TestModel.withError(String errorMessage) {
    error = errorMessage;
  }

  /// method convert map to json
  TestModel.fromJson(Map<String, dynamic> json) {
    id = json['ID'];
  }

  /// method convert json to map
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.id;
    return data;
  }
}
