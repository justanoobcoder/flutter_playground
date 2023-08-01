import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll/features/post/data/repositories/post_repository_impl.dart';

import 'features/post/domain/repositories/post_repository.dart';
import 'features/post/views/post_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RepositoryProvider<PostRepository>(
        create: (_) => PostRepositoryImpl(),
        child: const PostPage(),
      ),
    );
  }
}
