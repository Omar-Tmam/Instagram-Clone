import 'package:flutter/material.dart';
import 'package:instagram_clone/Features/user_view/presentation/views/widgets/custom_button.dart';

class FollowingMessageAddSection extends StatelessWidget {
  const FollowingMessageAddSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Expanded(
          flex: 2,
          child: UserPageButton(
            title: 'Following',
            icon: Icon(
              color: Colors.white,
              Icons.keyboard_arrow_down_sharp,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: UserPageButton(
            title: 'Message',
          ),
        ),
      ],
    );
  }
}
