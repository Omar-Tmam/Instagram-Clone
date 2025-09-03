import 'package:flutter/material.dart';
import 'package:instagram_clone/Core/utils/responsive_font_size.dart';
import 'package:instagram_clone/Core/widgets/custom_text.dart';
import 'package:instagram_clone/Features/user_view/data/models/user_followers_model/user_followers_model.dart';

class FollowedBySection extends StatelessWidget {
  const FollowedBySection({
    super.key,
    required this.followedByText, required this.userFollowersModel,
  });

  // static final List<String> images = [
  //   'https://www.facebook.com/images/fb_icon_325x325.png',
  //   'https://www.facebook.com/images/fb_icon_325x325.png',
  //   'https://www.facebook.com/images/fb_icon_325x325.png',
  // ];
  final String followedByText;
  final UserFollowersModel userFollowersModel;

  @override
  Widget build(BuildContext context) {
    
    return Row(
      children: [
        SizedBox(
          width: (3 * 30.0) - 4,
          height: 40,
          child: Stack(
            children: [
              for (int i = 0; i < 3; i++)
                Positioned(
                  left: i * 25.0,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundImage: NetworkImage(
                      userFollowersModel.data?.items?[i].profilePicUrl??'https://www.facebook.com/images/fb_icon_325x325.png'
                    ),
                  ),
                )
            ],
          ),
        ),
        SizedBox(
          width: 4,
        ),
        Expanded(
          child: SizedBox(
            child: CustomText(
              maxLines: 2,
              fontWeight: FontWeight.bold,
              title: followedByText,
              fontSize: getResponsiveFontSize(context, fontSize: 14),
            ),
          ),
        )
      ],
    );
  }
}
