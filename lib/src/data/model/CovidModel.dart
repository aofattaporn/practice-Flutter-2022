import 'package:dio/dio.dart';

class CovidModel {
  String? message;
  String? error;

  CovidModel(this.message);

  CovidModel.withError(String errorMessage) {
    error = errorMessage;
  }

  CovidModel.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Message'] = this.message;
    return data;
  }


}


class ApiProvider {
  final Dio _dio = Dio();
  final String _url = 'https://api.covid19api.com/summary';

  Future<CovidModel> fetchCovidList() async {
    try {
      Response response = await _dio.get(_url);
      print("sdfsdfsdfdsff");
      return CovidModel.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return CovidModel.withError("Data not found / Connection issue");
    }
  }
}