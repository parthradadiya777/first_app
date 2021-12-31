import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:first_app/Bloc%20pattern/Api/newModel.dart';

enum NewsAction {
  Fetch,
  Delete,
}

class NewsBloc {
  final _statStreamController = StreamController<List<Article>>();
  StreamSink<List<Article>> get _streamsink => _statStreamController.sink;
  Stream<List<Article>> get stream => _statStreamController.stream;

  final _eventcontroller = StreamController<NewsAction>();
  StreamSink<NewsAction> get eventsink => _eventcontroller.sink;
  Stream<NewsAction> get _eventstream => _eventcontroller.stream;

  NewsBloc() {
    _eventstream.listen((event) async {
      if (event == NewsAction.Fetch) {
        try {
          var news = await getNews();
          if (news != null)
            _streamsink.add(news.articles);
          else
            _streamsink.addError('Something Wents wrong');

          _streamsink.add(news.articles);
        } on Exception catch (e) {
          _streamsink.addError('Something Wents wrong');
        }
      }
    });
  }

  Future<NewsModel> getNews() async {
    var client = http.Client();
    var newsModel;
    print('client');
    print(client);
    print('newsModel');
    print(newsModel);

    try {
      var response = await client.get(
        Uri.parse(
            'http://newsapi.org/v2/everything?domains=wsj.com&apiKey=c4570f17bcf349e192f04c6a16a737cb'),
      );
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);
        print(jsonMap);

        newsModel = NewsModel.fromJson(jsonMap);
        print(newsModel);
      }
    } catch (Exception) {
      return newsModel;
    }
    return newsModel;
  }

  void disposee() {
    _statStreamController.close();
    _eventcontroller.close();
  }
}
