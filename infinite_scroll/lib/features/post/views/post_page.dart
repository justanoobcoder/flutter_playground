import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll/features/post/domain/repositories/post_repository.dart';
import 'package:infinite_scroll/features/post/views/post_list.dart';

import '../blocs/post_list_bloc.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdcdde1),
      appBar: AppBar(
        title: const Text('Infinite Scroll'),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (_) =>
            PostListBloc(postRepository: context.read<PostRepository>())
              ..add(PostListFetched(pageIndex: 0, pageSize: 10)),
        child: const PostList(),
      ),
    );
  }
}
