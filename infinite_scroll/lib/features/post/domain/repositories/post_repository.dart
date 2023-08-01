import '../models/post.dart';

abstract class PostRepository {
  Future<List<Post>> getPosts(int pageIndex, int pageSize);
}