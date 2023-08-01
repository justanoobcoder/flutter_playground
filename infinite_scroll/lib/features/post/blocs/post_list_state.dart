part of 'post_list_bloc.dart';

enum PostListStatus { initial, success, failure }

@freezed
class PostListState with _$PostListState {
  const factory PostListState({
    @Default(PostListStatus.initial) PostListStatus status,
    @Default([]) List<Post> posts,
    @Default(false) bool hasReachMax,
  }) = _PostListState;
}
