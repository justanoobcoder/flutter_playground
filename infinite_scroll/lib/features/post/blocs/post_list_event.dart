part of 'post_list_bloc.dart';

sealed class PostListEvent {}

class PostListFetched extends PostListEvent {
  final int pageIndex;
  final int pageSize;
  PostListFetched({required this.pageIndex, required this.pageSize});
}
