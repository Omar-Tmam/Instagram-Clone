import 'package:flutter/material.dart';
import 'package:instagram_clone/Core/utils/responsive_font_size.dart';
import 'package:instagram_clone/Features/user_view/data/models/reels_model/item.dart';

class ReelsBottomBar extends StatelessWidget {
  final Item videoData;
  const ReelsBottomBar({super.key, required this.videoData});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(width: 20),
            CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(videoData.user!.profilePicUrl!)),
            SizedBox(width: 15),
            Text(videoData.user!.fullName!,
                style: TextStyle(
                    fontSize: getResponsiveFontSize(context, fontSize: 18),
                    color: Colors.white)),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            SizedBox(width: 25),
            Expanded(
              child: Text(
                videoData.caption?.text ?? "",
                maxLines: 3,
                style: TextStyle(
                        fontSize: getResponsiveFontSize(context, fontSize: 18),
                        color: Colors.white)
                    .copyWith(
                        overflow: TextOverflow.ellipsis, color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
