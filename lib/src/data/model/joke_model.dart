import 'dart:convert';

JokeModel jokeModelFromJson(String str) => JokeModel.fromJson(json.decode(str));

String jokeModelToJson(JokeModel data) => json.encode(data.toJson());

class JokeModel {
  
  /// all field in Model
  String? setup;
  String? delivery;
  int? id;

  /// constructure method
  JokeModel({
    required this.setup,
    required this.delivery,
    required this.id,
  });

  /// to json data
  factory JokeModel.fromJson(Map<String, dynamic> json) => JokeModel(
        setup: json["setup"] ?? json["joke"] ?? "" as String?,
        delivery: json["delivery"] ?? "" as String?,
        id: json["id"] as int?,
      );

  Map<String, dynamic> toJson() => {
        "setup": setup,
        "delivery": delivery,
        "id": id,
      };
}
