import 'package:flutter/material.dart';
import 'package:infinite_scroll/extensions/date_time_extension.dart';

import '../domain/models/post.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                foregroundImage: NetworkImage(post.authorAvatar),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          post.authorName,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        const Spacer(flex: 1),
                        const Icon(
                          Icons.more_horiz,
                          color: Color(0xff666666),
                        ),
                        const Icon(
                          Icons.close,
                          color: Color(0xff666666),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          post.postedAt.toLocal().formatDateTime(),
                          style: const TextStyle(
                            color: Color(0xff666666),
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Icon(
                          Icons.public,
                          size: 13,
                          color: Color(0xff666666),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(post.content),
          const Divider(
            color: Color(0xffdddddd),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _interactButton(Icons.favorite_border, 'Like'),
              _interactButton(Icons.comment_bank_outlined, 'Comment'),
              _interactButton(Icons.share, 'Share'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _interactButton(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          size: 17,
          color: const Color(0xff666666),
        ),
        const SizedBox(width: 5),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xff666666),
          ),
        ),
      ],
    );
  }
}
