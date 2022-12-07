// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_quote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelQuote _$ModelQuoteFromJson(Map<String, dynamic> json) {
  return _ModelQuote.fromJson(json);
}

/// @nodoc
mixin _$ModelQuote {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelQuoteCopyWith<ModelQuote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelQuoteCopyWith<$Res> {
  factory $ModelQuoteCopyWith(
          ModelQuote value, $Res Function(ModelQuote) then) =
      _$ModelQuoteCopyWithImpl<$Res, ModelQuote>;
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String author, String content});
}

/// @nodoc
class _$ModelQuoteCopyWithImpl<$Res, $Val extends ModelQuote>
    implements $ModelQuoteCopyWith<$Res> {
  _$ModelQuoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? author = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModelQuoteCopyWith<$Res>
    implements $ModelQuoteCopyWith<$Res> {
  factory _$$_ModelQuoteCopyWith(
          _$_ModelQuote value, $Res Function(_$_ModelQuote) then) =
      __$$_ModelQuoteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String author, String content});
}

/// @nodoc
class __$$_ModelQuoteCopyWithImpl<$Res>
    extends _$ModelQuoteCopyWithImpl<$Res, _$_ModelQuote>
    implements _$$_ModelQuoteCopyWith<$Res> {
  __$$_ModelQuoteCopyWithImpl(
      _$_ModelQuote _value, $Res Function(_$_ModelQuote) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? author = null,
    Object? content = null,
  }) {
    return _then(_$_ModelQuote(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelQuote implements _ModelQuote {
  _$_ModelQuote(
      {@JsonKey(name: '_id') required this.id,
      required this.author,
      required this.content});

  factory _$_ModelQuote.fromJson(Map<String, dynamic> json) =>
      _$$_ModelQuoteFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String author;
  @override
  final String content;

  @override
  String toString() {
    return 'ModelQuote(id: $id, author: $author, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelQuote &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, author, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModelQuoteCopyWith<_$_ModelQuote> get copyWith =>
      __$$_ModelQuoteCopyWithImpl<_$_ModelQuote>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelQuoteToJson(
      this,
    );
  }
}

abstract class _ModelQuote implements ModelQuote {
  factory _ModelQuote(
      {@JsonKey(name: '_id') required final String id,
      required final String author,
      required final String content}) = _$_ModelQuote;

  factory _ModelQuote.fromJson(Map<String, dynamic> json) =
      _$_ModelQuote.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get author;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_ModelQuoteCopyWith<_$_ModelQuote> get copyWith =>
      throw _privateConstructorUsedError;
}
