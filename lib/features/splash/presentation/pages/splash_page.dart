import 'package:auto_route/auto_route.dart';
import 'package:clean_architecture/common/routes/app_router.gr.dart';
import 'package:clean_architecture/features/splash/cubit/splash_cubit.dart';
import 'package:clean_architecture/shared/core/page_status/page_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// This is the splash page widget.
class SplashPage extends StatelessWidget {
  /// This is the splash page widget.
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashCubit>(
      create: (context) => SplashCubit()..init(),
      child: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state.status == PageStatus.loaded) {
            context.pushRoute(const PostsPageRoute());
          }
        },
        child: const Scaffold(
          body: SafeArea(
            child: Center(child: CircularProgressIndicator.adaptive()),
          ),
        ),
      ),
    );
  }
}
