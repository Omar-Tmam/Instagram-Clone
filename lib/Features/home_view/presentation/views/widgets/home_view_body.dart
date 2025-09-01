import 'package:flutter/material.dart';
import 'package:instagram_clone/Core/widgets/custom_text.dart';
import 'package:ionicons/ionicons.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Center(
            child: Icon(
              Ionicons.logo_instagram,
              color: Colors.pinkAccent,
              size: 100,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          CustomText(title: 'Enter Username : '),
          SizedBox(
            height: 40,
          ),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () {}, child: Text('Submit')),
          ),
        ],
      ),
    );
  }
}
