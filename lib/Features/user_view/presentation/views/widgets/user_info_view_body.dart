import 'package:flutter/material.dart';
import 'package:instagram_clone/Core/utils/responsive_font_size.dart';
import 'package:instagram_clone/Core/widgets/custom_text.dart';
import 'package:instagram_clone/Features/user_view/presentation/views/widgets/category_info.dart';
import 'package:instagram_clone/Features/user_view/presentation/views/widgets/user_info_row.dart';

class UserInfoViewBody extends StatelessWidget {
  const UserInfoViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: AppBar(
              title: CustomText(
                title: 'User Name',
                fontSize: getResponsiveFontSize(context, fontSize: 22),
              ),
              actions: const [
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
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserInfoRow(
                followingNumber: '1k',
                postsNumber: '0',
                followersNumber: '69k',
                userImage:
                    'https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8fDA%3D&w=1000&q=80',
              ),
              CategoryInfo()
            ],
          ),
        ),
      ),
    );
  }
}
