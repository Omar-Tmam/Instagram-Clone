import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_clone/Core/utils/functions/user_data_args.dart';
import 'package:instagram_clone/Core/widgets/adaptive_layout_widget.dart';
import 'package:instagram_clone/Features/user_view/presentation/views/widgets/user_info_tablet.dart';
import 'package:instagram_clone/Features/user_view/presentation/views/widgets/user_info_view_body.dart';

class UserInfoView extends StatelessWidget {
  const UserInfoView({
    super.key,
    required this.userDataArgs,
  });
  final UserDataArgs userDataArgs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => UserInfoViewBody(
          userDataArgs: userDataArgs,
        ),
        tabletLayout: (context) =>
            UserInfoTableLayout(userDataArgs: userDataArgs),
        desktopLayout: (context) => SizedBox(),
      ),
    );
  }
}


