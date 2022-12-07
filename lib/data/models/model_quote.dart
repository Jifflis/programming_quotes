import 'package:freezed_annotation/freezed_annotation.dart';
part 'model_quote.freezed.dart';
part 'model_quote.g.dart';

//ignore_for_file:invalid_annotation_target
@freezed
class ModelQuote with _$ModelQuote {
  factory ModelQuote({
    @JsonKey(name: '_id') required String id,
    required String author,
    required String content,
  }) = _ModelQuote;

  factory ModelQuote.fromJson(Map<String, dynamic> map) => _$ModelQuoteFromJson(map);
}
