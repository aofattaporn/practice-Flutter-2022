import 'dart:async';

import 'bloc.dart';

class ArticleListBloc implements Bloc {
  // 1
  // final _client = RWClient();
  // 2
  final _searchQueryController = StreamController<String?>();

  // 3
  Sink<String?> get searchQuery => _searchQueryController.sink;

  // 4
  // late Stream<List<Article>?> articlesStream;

  // ArticleListBloc() {
  //   // 5
  //   articlesStream = _searchQueryController.stream
  //       .asyncMap((query) => _client.fetchArticles(query));
  // }

  // 6
  @override
  void dispose() {
    _searchQueryController.close();
  }
}
