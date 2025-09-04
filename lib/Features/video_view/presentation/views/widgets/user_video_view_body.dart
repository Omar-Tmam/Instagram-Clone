import 'package:flutter/material.dart';
import 'package:instagram_clone/Core/utils/functions/user_data_args.dart';
import 'package:instagram_clone/Features/user_view/data/models/reels_model/item.dart';
import 'package:instagram_clone/Features/video_view/presentation/views/widgets/my_app_bar.dart';
import 'package:instagram_clone/Features/video_view/presentation/views/widgets/reels_bot_bar.dart';
import 'package:instagram_clone/Features/video_view/presentation/views/widgets/reels_side_bar.dart';
import 'package:instagram_clone/Features/video_view/presentation/views/widgets/video_player.dart';
import 'package:video_player/video_player.dart';

class UserVideoViewBody extends StatelessWidget {
  const UserVideoViewBody({super.key, required this.item});
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        MyVideoPlayer(
          item: item,
        ),
        Positioned(
            top: 40,
            left: 20,
            right: 20,
            child: SafeArea(top: true, child: ReelsAppBar())),
        Positioned(
            bottom: 190,
            right: 10,
            child: ReelsSideBar(
              videoData: item,
            )),
        Positioned(
            bottom: 8,
            right: 0,
            left: 0,
            child: ReelsBottomBar(videoData: item))
      ],
    ));
  }
}
