// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_quotes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelQuotes _$$_ModelQuotesFromJson(Map<String, dynamic> json) =>
    _$_ModelQuotes(
      count: json['count'] as int,
      totalCount: json['totalCount'] as int,
      page: json['page'] as int,
      totalPages: json['totalPages'] as int,
      lastItemIndex: json['lastItemIndex'] as int,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => ModelQuote.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ModelQuotesToJson(_$_ModelQuotes instance) =>
    <String, dynamic>{
      'count': instance.count,
      'totalCount': instance.totalCount,
      'page': instance.page,
      'totalPages': instance.totalPages,
      'lastItemIndex': instance.lastItemIndex,
      'results': instance.results,
    };
