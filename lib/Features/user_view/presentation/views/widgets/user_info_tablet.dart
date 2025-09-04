import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_clone/Core/utils/functions/user_data_args.dart';
import 'package:instagram_clone/Features/user_view/presentation/views/widgets/custom_drawer.dart';
import 'package:instagram_clone/Features/user_view/presentation/views/widgets/user_info_view_body.dart';

class UserInfoTableLayout extends StatelessWidget {
  const UserInfoTableLayout({super.key, required this.userDataArgs});
  final UserDataArgs userDataArgs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: CustomDrawer(),
          ),
          Expanded(
            flex: 3,
            child: UserInfoViewBody(userDataArgs: userDataArgs),
          )
        ],
      ),
    );
  }
}


