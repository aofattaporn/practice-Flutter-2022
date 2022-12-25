import 'data/models/test_model.dart';

class Cash {
  static TestModel _data_home_page = TestModel(id: '');

  static TestModel get get_data_home_page => _data_home_page;

  static set set_data_home_page(TestModel value) {
    _data_home_page = value;
  }
}