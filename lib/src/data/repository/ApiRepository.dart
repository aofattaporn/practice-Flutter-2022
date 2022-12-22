import '../model/CovidModel.dart';

class ApiRepository {
  final _provider = ApiProvider();

  Future<CovidModel> fetchCovidList() {
    print("Get api!!!!");
    return _provider.fetchCovidList();
  }
}

class NetworkError extends Error {}
