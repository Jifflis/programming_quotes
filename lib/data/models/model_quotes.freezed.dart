// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_quotes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelQuotes _$ModelQuotesFromJson(Map<String, dynamic> json) {
  return _ModelQuotes.fromJson(json);
}

/// @nodoc
mixin _$ModelQuotes {
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalCount')
  int get totalCount => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalPages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastItemIndex')
  int get lastItemIndex => throw _privateConstructorUsedError;
  List<ModelQuote> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelQuotesCopyWith<ModelQuotes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelQuotesCopyWith<$Res> {
  factory $ModelQuotesCopyWith(
          ModelQuotes value, $Res Function(ModelQuotes) then) =
      _$ModelQuotesCopyWithImpl<$Res, ModelQuotes>;
  @useResult
  $Res call(
      {int count,
      @JsonKey(name: 'totalCount') int totalCount,
      int page,
      @JsonKey(name: 'totalPages') int totalPages,
      @JsonKey(name: 'lastItemIndex') int lastItemIndex,
      List<ModelQuote> results});
}

/// @nodoc
class _$ModelQuotesCopyWithImpl<$Res, $Val extends ModelQuotes>
    implements $ModelQuotesCopyWith<$Res> {
  _$ModelQuotesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? totalCount = null,
    Object? page = null,
    Object? totalPages = null,
    Object? lastItemIndex = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      lastItemIndex: null == lastItemIndex
          ? _value.lastItemIndex
          : lastItemIndex // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ModelQuote>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModelQuotesCopyWith<$Res>
    implements $ModelQuotesCopyWith<$Res> {
  factory _$$_ModelQuotesCopyWith(
          _$_ModelQuotes value, $Res Function(_$_ModelQuotes) then) =
      __$$_ModelQuotesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count,
      @JsonKey(name: 'totalCount') int totalCount,
      int page,
      @JsonKey(name: 'totalPages') int totalPages,
      @JsonKey(name: 'lastItemIndex') int lastItemIndex,
      List<ModelQuote> results});
}

/// @nodoc
class __$$_ModelQuotesCopyWithImpl<$Res>
    extends _$ModelQuotesCopyWithImpl<$Res, _$_ModelQuotes>
    implements _$$_ModelQuotesCopyWith<$Res> {
  __$$_ModelQuotesCopyWithImpl(
      _$_ModelQuotes _value, $Res Function(_$_ModelQuotes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? totalCount = null,
    Object? page = null,
    Object? totalPages = null,
    Object? lastItemIndex = null,
    Object? results = null,
  }) {
    return _then(_$_ModelQuotes(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      lastItemIndex: null == lastItemIndex
          ? _value.lastItemIndex
          : lastItemIndex // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ModelQuote>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelQuotes implements _ModelQuotes {
  _$_ModelQuotes(
      {required this.count,
      @JsonKey(name: 'totalCount') required this.totalCount,
      required this.page,
      @JsonKey(name: 'totalPages') required this.totalPages,
      @JsonKey(name: 'lastItemIndex') required this.lastItemIndex,
      final List<ModelQuote> results = const []})
      : _results = results;

  factory _$_ModelQuotes.fromJson(Map<String, dynamic> json) =>
      _$$_ModelQuotesFromJson(json);

  @override
  final int count;
  @override
  @JsonKey(name: 'totalCount')
  final int totalCount;
  @override
  final int page;
  @override
  @JsonKey(name: 'totalPages')
  final int totalPages;
  @override
  @JsonKey(name: 'lastItemIndex')
  final int lastItemIndex;
  final List<ModelQuote> _results;
  @override
  @JsonKey()
  List<ModelQuote> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ModelQuotes(count: $count, totalCount: $totalCount, page: $page, totalPages: $totalPages, lastItemIndex: $lastItemIndex, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelQuotes &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.lastItemIndex, lastItemIndex) ||
                other.lastItemIndex == lastItemIndex) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, totalCount, page,
      totalPages, lastItemIndex, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModelQuotesCopyWith<_$_ModelQuotes> get copyWith =>
      __$$_ModelQuotesCopyWithImpl<_$_ModelQuotes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelQuotesToJson(
      this,
    );
  }
}

abstract class _ModelQuotes implements ModelQuotes {
  factory _ModelQuotes(
      {required final int count,
      @JsonKey(name: 'totalCount') required final int totalCount,
      required final int page,
      @JsonKey(name: 'totalPages') required final int totalPages,
      @JsonKey(name: 'lastItemIndex') required final int lastItemIndex,
      final List<ModelQuote> results}) = _$_ModelQuotes;

  factory _ModelQuotes.fromJson(Map<String, dynamic> json) =
      _$_ModelQuotes.fromJson;

  @override
  int get count;
  @override
  @JsonKey(name: 'totalCount')
  int get totalCount;
  @override
  int get page;
  @override
  @JsonKey(name: 'totalPages')
  int get totalPages;
  @override
  @JsonKey(name: 'lastItemIndex')
  int get lastItemIndex;
  @override
  List<ModelQuote> get results;
  @override
  @JsonKey(ignore: true)
  _$$_ModelQuotesCopyWith<_$_ModelQuotes> get copyWith =>
      throw _privateConstructorUsedError;
}
