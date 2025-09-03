import 'package:flutter/material.dart';
import 'package:instagram_clone/Core/widgets/adaptive_layout_widget.dart';
import 'package:instagram_clone/Features/user_view/data/models/user_info_model/user_info_model.dart';
import 'package:instagram_clone/Features/user_view/presentation/views/widgets/user_info_view_body.dart';

class UserInfoView extends StatelessWidget {
  const UserInfoView({super.key, required this.userInfoModel});
  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => UserInfoViewBody(
          userInfoModel: userInfoModel,
        ),
        tabletLayout: (context) => SizedBox(),
        desktopLayout: (context) => SizedBox(),
      ),
    );
  }
}
