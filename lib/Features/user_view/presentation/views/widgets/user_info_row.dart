import 'package:flutter/material.dart';
import 'package:instagram_clone/Features/user_view/presentation/views/widgets/user_num_column.dart';

class UserInfoRow extends StatelessWidget {
  const UserInfoRow(
      {super.key,
      required this.userImage,
      required this.followersNumber,
      required this.followingNumber,
      required this.postsNumber});
  final String userImage, followersNumber, followingNumber, postsNumber;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(colors: [
                Colors.pinkAccent,
                Colors.purpleAccent,
                Colors.orangeAccent,
              ])),
          child: CircleAvatar(
            radius: 45,
            backgroundImage: NetworkImage(userImage),
          ),
        ),
        Expanded(
          child: SizedBox(),
        ),
        UserNumColumn(title: 'posts', numbers: postsNumber),
        Expanded(
          child: SizedBox(),
        ),
        UserNumColumn(title: 'followers', numbers: followersNumber),
        Expanded(
          child: SizedBox(),
        ),
        UserNumColumn(title: 'following', numbers: followingNumber),
        Expanded(
          child: SizedBox(),
        )
      ],
    );
  }
}
