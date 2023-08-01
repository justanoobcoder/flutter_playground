import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll/common/constants.dart';
import 'package:infinite_scroll/features/post/blocs/post_list_bloc.dart';
import 'package:infinite_scroll/features/post/views/post_item.dart';

class PostList extends StatefulWidget {
  const PostList({super.key});

  @override
  State<PostList> createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  int pageIndex = 0;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<PostListBloc>().add(
        PostListFetched(pageIndex: pageIndex, pageSize: AppConstants.pageSize));
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostListBloc, PostListState>(
      builder: (context, state) {
        return switch (state.status) {
          PostListStatus.initial =>
            const Center(child: CircularProgressIndicator()),
          PostListStatus.failure => const Center(
              child: Text(
                'Something was wrong!',
                style: TextStyle(fontSize: 18),
              ),
            ),
          PostListStatus.success => ListView.builder(
              controller: _scrollController,
              physics: const BouncingScrollPhysics(),
              itemCount: state.hasReachMax
                  ? state.posts.length
                  : state.posts.length + 1,
              itemBuilder: (context, index) {
                return index >= state.posts.length
                    ? const Center(child: CircularProgressIndicator())
                    : PostItem(post: state.posts[index]);
              },
            ),
        };
      },
    );
  }

  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (currentScroll == maxScroll) {
      context.read<PostListBloc>().add(PostListFetched(
          pageIndex: ++pageIndex, pageSize: AppConstants.pageSize));
    }
  }
}
