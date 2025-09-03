import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Core/utils/functions/user_data_args.dart';
import 'package:instagram_clone/Core/utils/responsive_font_size.dart';
import 'package:instagram_clone/Core/widgets/custom_text.dart';

class TabBarAndTabBarViewer extends StatelessWidget {
  const TabBarAndTabBarViewer({
    super.key,
    required this.userDataArgs,
  });

  final UserDataArgs userDataArgs;

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
                    itemCount: userDataArgs.postsModel.data?.count ?? 0,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 1,
                        crossAxisSpacing: 1,
                        childAspectRatio: 1.1 / 2),
                    itemBuilder: (context, index) {
                      return Image.network(
                        userDataArgs
                                .postsModel.data?.items?[index].thumbnailUrl ??
                            '',
                        fit: BoxFit.cover,
                      );
                    }),
                GridView.builder(
                    itemCount: userDataArgs.reelsModel.data?.count ?? 0,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 1,
                        crossAxisSpacing: 1,
                        childAspectRatio: 1.1 / 2),
                    itemBuilder: (context, index) {
                      return Image.network(
                        userDataArgs
                                .reelsModel.data?.items?[index].thumbnailUrl ??
                            '',
                        fit: BoxFit.cover,
                      );
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
