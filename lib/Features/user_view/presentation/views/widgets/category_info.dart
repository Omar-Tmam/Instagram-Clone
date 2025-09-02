import 'package:flutter/material.dart';
import 'package:instagram_clone/Core/utils/responsive_font_size.dart';
import 'package:instagram_clone/Core/widgets/custom_text.dart';
import 'package:instagram_clone/Features/user_view/presentation/views/widgets/followed_by_section.dart';

class CategoryInfo extends StatelessWidget {
  const CategoryInfo({super.key});
  static final List<String> images = [
    'https://www.facebook.com/images/fb_icon_325x325.png',
    'https://www.facebook.com/images/fb_icon_325x325.png',
    'https://www.facebook.com/images/fb_icon_325x325.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        CustomText(
          title: 'Category',
          fontSize: getResponsiveFontSize(context, fontSize: 14),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Transform.rotate(
              angle: -10,
              child: Icon(
                Icons.link,
              ),
            ),
            SizedBox(
              width: 9,
            ),
            CustomText(
              title: 'www.Facebook.com',
              fontWeight: FontWeight.w600,
              fontSize: getResponsiveFontSize(context, fontSize: 13),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        FollowedBySection(
          
            followedByText: 'Followed by user1, user2 and 69k others',
            images: images)
      ],
    );
  }
}
