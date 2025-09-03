import 'package:flutter/material.dart';
import 'package:instagram_clone/Core/utils/responsive_font_size.dart';
import 'package:instagram_clone/Core/widgets/custom_text.dart';
import 'package:instagram_clone/Features/user_view/data/models/user_info_model/user_info_model.dart';
import 'package:instagram_clone/Features/user_view/presentation/views/widgets/followed_by_section.dart';

class CategoryInfo extends StatelessWidget {
  const CategoryInfo({super.key, required this.userInfoModel});
  final UserInfoModel userInfoModel;

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
              title: 'www.Facebook.com',
              fontWeight: FontWeight.w600,
              fontSize: getResponsiveFontSize(context, fontSize: 13),
            ),
          ],
        ),
        const SizedBox(height: 10),
        FollowedBySection(
          followedByText: 'Followed by user1, user2,user3 and 69k others',
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
