import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Core/utils/responsive_font_size.dart';
import 'package:instagram_clone/Core/widgets/custom_text.dart';

class TabBarAndTabBarViewer extends StatelessWidget {
  const TabBarAndTabBarViewer({
    super.key,
  });

  static final List<String> posts = [
    'https://www.facebook.com/images/fb_icon_325x325.png',
    'https://www.facebook.com/images/fb_icon_325x325.png',
    'https://www.facebook.com/images/fb_icon_325x325.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          TabBar(
            dragStartBehavior: DragStartBehavior.down,
            indicatorWeight: 1,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            labelPadding: EdgeInsets.all(3),
            dividerColor: Colors.black,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(icon: Icon(Icons.grid_on)), // Posts
              Tab(icon: Icon(Icons.video_library_outlined)), // Reels
              Tab(icon: Icon(Icons.person_pin)), // Tagged
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                GridView.builder(
                    itemCount: posts.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 1,
                        crossAxisSpacing: 1,
                        childAspectRatio: 1.1 / 2),
                    itemBuilder: (context, index) {
                      return Image.network(posts[index]);
                    }),
                GridView.builder(
                    itemCount: posts.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 1,
                        crossAxisSpacing: 1,
                        childAspectRatio: 0.9 / 1.6),
                    itemBuilder: (context, index) {
                      return Image.network(posts[index]);
                    }),
                Center(
                  child: CustomText(
                    title: 'No Tagged Posts',
                    fontSize: getResponsiveFontSize(context, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
