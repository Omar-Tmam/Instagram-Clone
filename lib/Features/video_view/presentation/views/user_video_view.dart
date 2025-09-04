import 'package:flutter/material.dart';
import 'package:instagram_clone/Core/utils/functions/user_data_args.dart';
import 'package:instagram_clone/Core/widgets/adaptive_layout_widget.dart';
import 'package:instagram_clone/Features/user_view/data/models/reels_model/item.dart';
import 'package:instagram_clone/Features/video_view/presentation/views/widgets/user_video_view_body.dart';

class UserVideoView extends StatelessWidget {
  const UserVideoView({super.key, required this.item});
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mobileLayout: (context) => UserVideoViewBody(
             item: item, 
              ),
          tabletLayout: (context) => SizedBox(),
          desktopLayout: (context) => SizedBox()),
    );
  }
}
