// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostListState {
  PostListStatus get status => throw _privateConstructorUsedError;
  List<Post> get posts => throw _privateConstructorUsedError;
  bool get hasReachMax => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostListStateCopyWith<PostListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostListStateCopyWith<$Res> {
  factory $PostListStateCopyWith(
          PostListState value, $Res Function(PostListState) then) =
      _$PostListStateCopyWithImpl<$Res, PostListState>;
  @useResult
  $Res call({PostListStatus status, List<Post> posts, bool hasReachMax});
}

/// @nodoc
class _$PostListStateCopyWithImpl<$Res, $Val extends PostListState>
    implements $PostListStateCopyWith<$Res> {
  _$PostListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? posts = null,
    Object? hasReachMax = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PostListStatus,
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      hasReachMax: null == hasReachMax
          ? _value.hasReachMax
          : hasReachMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostListStateCopyWith<$Res>
    implements $PostListStateCopyWith<$Res> {
  factory _$$_PostListStateCopyWith(
          _$_PostListState value, $Res Function(_$_PostListState) then) =
      __$$_PostListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PostListStatus status, List<Post> posts, bool hasReachMax});
}

/// @nodoc
class __$$_PostListStateCopyWithImpl<$Res>
    extends _$PostListStateCopyWithImpl<$Res, _$_PostListState>
    implements _$$_PostListStateCopyWith<$Res> {
  __$$_PostListStateCopyWithImpl(
      _$_PostListState _value, $Res Function(_$_PostListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? posts = null,
    Object? hasReachMax = null,
  }) {
    return _then(_$_PostListState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PostListStatus,
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      hasReachMax: null == hasReachMax
          ? _value.hasReachMax
          : hasReachMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PostListState implements _PostListState {
  const _$_PostListState(
      {this.status = PostListStatus.initial,
      final List<Post> posts = const [],
      this.hasReachMax = false})
      : _posts = posts;

  @override
  @JsonKey()
  final PostListStatus status;
  final List<Post> _posts;
  @override
  @JsonKey()
  List<Post> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  @JsonKey()
  final bool hasReachMax;

  @override
  String toString() {
    return 'PostListState(status: $status, posts: $posts, hasReachMax: $hasReachMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostListState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            (identical(other.hasReachMax, hasReachMax) ||
                other.hasReachMax == hasReachMax));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_posts), hasReachMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostListStateCopyWith<_$_PostListState> get copyWith =>
      __$$_PostListStateCopyWithImpl<_$_PostListState>(this, _$identity);
}

abstract class _PostListState implements PostListState {
  const factory _PostListState(
      {final PostListStatus status,
      final List<Post> posts,
      final bool hasReachMax}) = _$_PostListState;

  @override
  PostListStatus get status;
  @override
  List<Post> get posts;
  @override
  bool get hasReachMax;
  @override
  @JsonKey(ignore: true)
  _$$_PostListStateCopyWith<_$_PostListState> get copyWith =>
      throw _privateConstructorUsedError;
}
