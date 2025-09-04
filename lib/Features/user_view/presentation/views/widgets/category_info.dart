import 'package:flutter/material.dart';
import 'package:instagram_clone/Core/utils/responsive_font_size.dart';
import 'package:instagram_clone/Core/widgets/custom_text.dart';
import 'package:instagram_clone/Features/user_view/data/models/user_followers_model/user_followers_model.dart';
import 'package:instagram_clone/Features/user_view/data/models/user_info_model/user_info_model.dart';
import 'package:instagram_clone/Features/user_view/presentation/views/widgets/followed_by_section.dart';

class CategoryInfo extends StatelessWidget {
  const CategoryInfo(
      {super.key,
      required this.userInfoModel,
      required this.userFollowersModel});
  final UserInfoModel userInfoModel;
  final UserFollowersModel userFollowersModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        CustomText(
          title: userInfoModel.data?.category ?? 'No Category',
          fontSize: getResponsiveFontSize(context, fontSize: 14),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Transform.rotate(
              angle: -10,
              child: const Icon(Icons.link),
            ),
            const SizedBox(width: 9),
            CustomText(
              title: userInfoModel.data?.bioLinks?.first.url ?? 'No Link',
              fontWeight: FontWeight.w600,
              fontSize: getResponsiveFontSize(context, fontSize: 13),
            ),
          ],
        ),
        const SizedBox(height: 10),
        FollowedBySection(
          userFollowersModel: userFollowersModel,
          followedByText:
              'Followed by ${userFollowersModel.data?.items?[0].username}, ${userFollowersModel.data?.items?[2].username},${userFollowersModel.data?.items?[1].username}',
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
