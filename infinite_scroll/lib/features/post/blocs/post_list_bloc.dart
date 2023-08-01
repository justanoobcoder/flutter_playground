import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll/features/post/domain/repositories/post_repository.dart';

import '../domain/models/post.dart';

part 'post_list_bloc.freezed.dart';
part 'post_list_event.dart';
part 'post_list_state.dart';

class PostListBloc extends Bloc<PostListEvent, PostListState> {
  PostListBloc({required PostRepository postRepository})
      : _repository = postRepository,
        super(const PostListState()) {
    on<PostListFetched>(_onPostListFetched, transformer: droppable());
  }

  final PostRepository _repository;

  Future<void> _onPostListFetched(
      PostListFetched event, Emitter<PostListState> emit) async {
    if (state.hasReachMax) return;
    try {
      List<Post> posts =
          await _repository.getPosts(event.pageIndex, event.pageSize);
      if (state.status == PostListStatus.initial) {
        emit(state.copyWith(
          status: PostListStatus.success,
          posts: posts,
        ));
      } else {
        posts.isEmpty
            ? emit(state.copyWith(hasReachMax: true))
            : emit(state.copyWith(
                status: PostListStatus.success,
                posts: List.of(state.posts)..addAll(posts),
              ));
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      emit(state.copyWith(status: PostListStatus.failure));
    }
  }
}
