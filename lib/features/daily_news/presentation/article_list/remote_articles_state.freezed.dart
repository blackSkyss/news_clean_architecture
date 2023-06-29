// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_articles_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteArticlesObject {
  List<Article> get articles => throw _privateConstructorUsedError;
  bool get noMoreData => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get isInit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteArticlesObjectCopyWith<RemoteArticlesObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteArticlesObjectCopyWith<$Res> {
  factory $RemoteArticlesObjectCopyWith(RemoteArticlesObject value,
          $Res Function(RemoteArticlesObject) then) =
      _$RemoteArticlesObjectCopyWithImpl<$Res, RemoteArticlesObject>;
  @useResult
  $Res call({List<Article> articles, bool noMoreData, int page, bool isInit});
}

/// @nodoc
class _$RemoteArticlesObjectCopyWithImpl<$Res,
        $Val extends RemoteArticlesObject>
    implements $RemoteArticlesObjectCopyWith<$Res> {
  _$RemoteArticlesObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
    Object? noMoreData = null,
    Object? page = null,
    Object? isInit = null,
  }) {
    return _then(_value.copyWith(
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      noMoreData: null == noMoreData
          ? _value.noMoreData
          : noMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isInit: null == isInit
          ? _value.isInit
          : isInit // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RemoteArticlesObjectCopyWith<$Res>
    implements $RemoteArticlesObjectCopyWith<$Res> {
  factory _$$_RemoteArticlesObjectCopyWith(_$_RemoteArticlesObject value,
          $Res Function(_$_RemoteArticlesObject) then) =
      __$$_RemoteArticlesObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Article> articles, bool noMoreData, int page, bool isInit});
}

/// @nodoc
class __$$_RemoteArticlesObjectCopyWithImpl<$Res>
    extends _$RemoteArticlesObjectCopyWithImpl<$Res, _$_RemoteArticlesObject>
    implements _$$_RemoteArticlesObjectCopyWith<$Res> {
  __$$_RemoteArticlesObjectCopyWithImpl(_$_RemoteArticlesObject _value,
      $Res Function(_$_RemoteArticlesObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
    Object? noMoreData = null,
    Object? page = null,
    Object? isInit = null,
  }) {
    return _then(_$_RemoteArticlesObject(
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      noMoreData: null == noMoreData
          ? _value.noMoreData
          : noMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isInit: null == isInit
          ? _value.isInit
          : isInit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RemoteArticlesObject implements _RemoteArticlesObject {
  _$_RemoteArticlesObject(
      {required final List<Article> articles,
      required this.noMoreData,
      required this.page,
      required this.isInit})
      : _articles = articles;

  final List<Article> _articles;
  @override
  List<Article> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  final bool noMoreData;
  @override
  final int page;
  @override
  final bool isInit;

  @override
  String toString() {
    return 'RemoteArticlesObject(articles: $articles, noMoreData: $noMoreData, page: $page, isInit: $isInit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteArticlesObject &&
            const DeepCollectionEquality().equals(other._articles, _articles) &&
            (identical(other.noMoreData, noMoreData) ||
                other.noMoreData == noMoreData) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.isInit, isInit) || other.isInit == isInit));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_articles), noMoreData, page, isInit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteArticlesObjectCopyWith<_$_RemoteArticlesObject> get copyWith =>
      __$$_RemoteArticlesObjectCopyWithImpl<_$_RemoteArticlesObject>(
          this, _$identity);
}

abstract class _RemoteArticlesObject implements RemoteArticlesObject {
  factory _RemoteArticlesObject(
      {required final List<Article> articles,
      required final bool noMoreData,
      required final int page,
      required final bool isInit}) = _$_RemoteArticlesObject;

  @override
  List<Article> get articles;
  @override
  bool get noMoreData;
  @override
  int get page;
  @override
  bool get isInit;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteArticlesObjectCopyWith<_$_RemoteArticlesObject> get copyWith =>
      throw _privateConstructorUsedError;
}
