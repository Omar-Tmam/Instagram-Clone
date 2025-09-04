import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_clone/Core/utils/api_service.dart';
import 'package:instagram_clone/Core/widgets/adaptive_layout_widget.dart';
import 'package:instagram_clone/Features/home_view/presentation/views/widgets/home_view_body.dart';
import 'package:instagram_clone/Features/user_view/data/repos/user_repo/user_repo_imp.dart';
import 'package:instagram_clone/Features/user_view/presentation/manager/user_info_cubit/user_info_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
          create: (context) => UserInfoCubit(UserRepoImp(ApiService())),
          child: HomeViewBody(),
        ),
    );
  }
}
