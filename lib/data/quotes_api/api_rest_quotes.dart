import 'package:programming_quotes/data/http_service.dart';
import 'package:programming_quotes/data/models/model_quote.dart';
import 'package:programming_quotes/data/models/model_quotes.dart';
import 'package:programming_quotes/data/quotes_api/api_quotes.dart';
import 'package:rxdart/rxdart.dart';

class ApiRestQuotes extends ApiQuotes {
  ApiRestQuotes({required HttpService httpService}) : _httpService = httpService;

  final HttpService _httpService;

  final _quoteStreamController = BehaviorSubject<List<ModelQuote>>.seeded(const []);

  Future<void> _getQuotes() async {
    final result = await _httpService.get();
    ModelQuotes quotes = ModelQuotes.fromJson(result);
    _quoteStreamController.add(quotes.results);
  }

  @override
  Future<void> deleteQuote(String id) async {
    final quotes = [..._quoteStreamController.value];
    final index = quotes.indexWhere((t) => t.id == id);
    quotes.removeAt(index);
    _quoteStreamController.add(quotes);
  }

  @override
  Stream<List<ModelQuote>> getQuotes() async* {
    await _getQuotes();
    yield* _quoteStreamController.asBroadcastStream();
  }

  @override
  Future<void> updateQuote(ModelQuote quote) async {
    final qoutes = [..._quoteStreamController.value];
    final index = qoutes.indexWhere((t) => t.id == quote.id);
    qoutes[index] = quote;
    _quoteStreamController.add(qoutes);
  }
}
