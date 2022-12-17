import 'package:clean_architecture/common/di/injectable.dart';
import 'package:clean_architecture/features/post/presentation/cubit/posts_page_cubit.dart';
import 'package:clean_architecture/shared/core/page_status/page_status_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// This is the posts page widget.
class PostsPage extends StatelessWidget {
  /// This is the posts page widget.
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: BlocProvider<PostsPageCubit>(
        create: (context) => sl<PostsPageCubit>()..init(),
        child: BlocBuilder<PostsPageCubit, PostsPageState>(
          builder: (context, state) {
            return state.status.builder(
                  onEmpty: const Center(child: Text('No posts')),
                  initial: const Center(child: Text('initial')),
                  onError: Center(child: Text(state.exception.toString())),
                  onLoaded: ListView.builder(
                    itemCount: state.posts.length,
                    itemBuilder: (context, index) {
                      final post = state.posts[index];
                      return ListTile(
                        title: Text(post.title ?? 'Title'),
                        subtitle: Text(post.body ?? 'Body'),
                      );
                    },
                  ),
                  onLoading: const Center(child: CircularProgressIndicator()),
                ) ??
                const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
