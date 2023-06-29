// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_articles_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocalArticlesObject {
  List<Article> get articles => throw _privateConstructorUsedError;
  bool get isInit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalArticlesObjectCopyWith<LocalArticlesObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalArticlesObjectCopyWith<$Res> {
  factory $LocalArticlesObjectCopyWith(
          LocalArticlesObject value, $Res Function(LocalArticlesObject) then) =
      _$LocalArticlesObjectCopyWithImpl<$Res, LocalArticlesObject>;
  @useResult
  $Res call({List<Article> articles, bool isInit});
}

/// @nodoc
class _$LocalArticlesObjectCopyWithImpl<$Res, $Val extends LocalArticlesObject>
    implements $LocalArticlesObjectCopyWith<$Res> {
  _$LocalArticlesObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
    Object? isInit = null,
  }) {
    return _then(_value.copyWith(
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      isInit: null == isInit
          ? _value.isInit
          : isInit // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocalArticlesObjectCopyWith<$Res>
    implements $LocalArticlesObjectCopyWith<$Res> {
  factory _$$_LocalArticlesObjectCopyWith(_$_LocalArticlesObject value,
          $Res Function(_$_LocalArticlesObject) then) =
      __$$_LocalArticlesObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Article> articles, bool isInit});
}

/// @nodoc
class __$$_LocalArticlesObjectCopyWithImpl<$Res>
    extends _$LocalArticlesObjectCopyWithImpl<$Res, _$_LocalArticlesObject>
    implements _$$_LocalArticlesObjectCopyWith<$Res> {
  __$$_LocalArticlesObjectCopyWithImpl(_$_LocalArticlesObject _value,
      $Res Function(_$_LocalArticlesObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
    Object? isInit = null,
  }) {
    return _then(_$_LocalArticlesObject(
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      isInit: null == isInit
          ? _value.isInit
          : isInit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LocalArticlesObject implements _LocalArticlesObject {
  _$_LocalArticlesObject(
      {required final List<Article> articles, required this.isInit})
      : _articles = articles;

  final List<Article> _articles;
  @override
  List<Article> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  final bool isInit;

  @override
  String toString() {
    return 'LocalArticlesObject(articles: $articles, isInit: $isInit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalArticlesObject &&
            const DeepCollectionEquality().equals(other._articles, _articles) &&
            (identical(other.isInit, isInit) || other.isInit == isInit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_articles), isInit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocalArticlesObjectCopyWith<_$_LocalArticlesObject> get copyWith =>
      __$$_LocalArticlesObjectCopyWithImpl<_$_LocalArticlesObject>(
          this, _$identity);
}

abstract class _LocalArticlesObject implements LocalArticlesObject {
  factory _LocalArticlesObject(
      {required final List<Article> articles,
      required final bool isInit}) = _$_LocalArticlesObject;

  @override
  List<Article> get articles;
  @override
  bool get isInit;
  @override
  @JsonKey(ignore: true)
  _$$_LocalArticlesObjectCopyWith<_$_LocalArticlesObject> get copyWith =>
      throw _privateConstructorUsedError;
}
