import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_clone/Core/utils/cubit/app_theme_cubit.dart';
import 'package:instagram_clone/Core/utils/functions/user_data_args.dart';
import 'package:instagram_clone/Core/utils/responsive_font_size.dart';
import 'package:instagram_clone/Core/widgets/custom_text.dart';
import 'package:instagram_clone/Features/user_view/presentation/views/widgets/category_info.dart';
import 'package:instagram_clone/Features/user_view/presentation/views/widgets/following_message_add_section.dart';
import 'package:instagram_clone/Features/user_view/presentation/views/widgets/tab_bar_tab_bar_view.dart';
import 'package:instagram_clone/Features/user_view/presentation/views/widgets/user_info_row.dart';

import '../../../../../Core/utils/functions/num_formatter.dart';

class UserInfoViewBody extends StatelessWidget {
  const UserInfoViewBody({
    super.key,
    required this.userDataArgs,
  });
  final UserDataArgs userDataArgs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: AppBar(
              automaticallyImplyLeading: false,
              title: CustomText(
                title: userDataArgs.userInfoModel.data?.username ?? '',
                fontSize: getResponsiveFontSize(context, fontSize: 22),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      context.read<AppThemeCubit>().toggleTheme();
                    },
                    icon: Theme.of(context).scaffoldBackgroundColor ==
                            Colors.black
                        ? Icon(Icons.light_mode)
                        : Icon(Icons.dark_mode)),
                SizedBox(width: 20),
                Icon(Icons.notifications_none),
                SizedBox(width: 20),
                Icon(Icons.more_horiz),
                SizedBox(width: 20),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserInfoRow(
                followersNumber: formatNumber(
                    userDataArgs.userInfoModel.data!.followerCount!),
                followingNumber: formatNumber(
                    userDataArgs.userInfoModel.data!.followingCount!),
                postsNumber:
                    formatNumber(userDataArgs.userInfoModel.data!.mediaCount!),
                userImage: userDataArgs.userInfoModel.data!.profilePicUrlHd!,
              ),
              CategoryInfo(
                userFollowersModel: userDataArgs.userFollowersModel,
                userInfoModel: userDataArgs.userInfoModel,
              ),
              const FollowingMessageAddSection(),
              SizedBox(
                height: 10,
              ),
              DefaultTabController(
                length: 3,
                child: TabBarAndTabBarViewer(
                  userDataArgs: userDataArgs,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
