import '../models/model_quote.dart';

abstract class ApiQuotes {
  Stream<List<ModelQuote>> getQuotes();

  Future<void> deleteQuote(String id);

  Future<void> updateQuote(ModelQuote quote);
}
