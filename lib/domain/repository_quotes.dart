import 'package:programming_quotes/data/quotes_api/api_quotes.dart';

import '../data/models/model_quote.dart';

class RepositoryQuotes {
  RepositoryQuotes({required ApiQuotes apiQuotes}) : _apiQuotes = apiQuotes;

  final ApiQuotes _apiQuotes;

  /// Provides a [Stream] of all quotes.
  ///
  Stream<List<ModelQuote>> getQuotes() => _apiQuotes.getQuotes();

  /// Update Quote
  ///
  Future<void> updateQuote(ModelQuote modelQuote) => _apiQuotes.updateQuote(modelQuote);

  /// Delete Qoute
  ///
  Future<void> deleteQuote(String id) => _apiQuotes.deleteQuote(id);
}
