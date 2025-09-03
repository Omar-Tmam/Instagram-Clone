import 'package:flutter/material.dart';
import 'package:instagram_clone/Features/user_view/presentation/views/widgets/custom_button.dart';

class FollowingMessageAddSection extends StatelessWidget {
  const FollowingMessageAddSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: CustomButton(
            title: 'Following',
            icon: Icons.keyboard_arrow_down_sharp,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: CustomButton(
            title: 'Message',
          ),
        ),
        SizedBox(
          width: 10,
        ),
        CustomButton(
          icon: Icons.person_add_alt,
        ),
      ],
    );
  }
}
