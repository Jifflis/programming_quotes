import 'package:freezed_annotation/freezed_annotation.dart';

import 'model_quote.dart';

part 'model_quotes.freezed.dart';
part 'model_quotes.g.dart';

//ignore_for_file:invalid_annotation_target
@freezed
class ModelQuotes with _$ModelQuotes {
  factory ModelQuotes(
      {required int count,
      @JsonKey(name: 'totalCount') required int totalCount,
      required int page,
      @JsonKey(name: 'totalPages') required int totalPages,
      @JsonKey(name: 'lastItemIndex') required int lastItemIndex,
      @Default([]) List<ModelQuote> results}) = _ModelQuotes;

  factory ModelQuotes.fromJson(Map<String, dynamic> map) => _$ModelQuotesFromJson(map);
}
