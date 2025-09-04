import 'package:flutter/material.dart';
import 'package:instagram_clone/Core/utils/functions/user_data_args.dart';
import 'package:instagram_clone/Features/user_view/data/models/reels_model/item.dart';
import 'package:instagram_clone/Features/video_view/presentation/views/widgets/video_player.dart';
import 'package:video_player/video_player.dart';

class UserVideoViewBody extends StatelessWidget {
  const UserVideoViewBody({super.key, required this.item});
  final Item item;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: MyVideoPlayer(),
    );
  }
}
