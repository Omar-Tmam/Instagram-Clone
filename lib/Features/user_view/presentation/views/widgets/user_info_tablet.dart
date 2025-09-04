import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_clone/Core/utils/functions/user_data_args.dart';
import 'package:instagram_clone/Features/user_view/presentation/views/widgets/user_info_view_body.dart';

class UserInfoTableLayout extends StatelessWidget {
  const UserInfoTableLayout({super.key, required this.userDataArgs});
  final UserDataArgs userDataArgs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Drawer(
              child: Expanded(
                child: Column(
                  children: [
                    DrawerHeader(
                      padding: EdgeInsets.zero,
                      margin: EdgeInsets.zero,
                      child: Center(
                        child: CachedNetworkImage(
                            imageUrl:
                                'https://static.vecteezy.com/system/resources/previews/065/386/566/non_2x/instagram-wordmark-logo-icon-ig-app-transparent-background-premium-social-media-design-for-digital-download-free-png.png'),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.home),
                      title:
                          FittedBox(fit: BoxFit.scaleDown, child: Text('Home')),
                      onTap: () {
                        context.pop();
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.search),
                      title: FittedBox(
                          fit: BoxFit.scaleDown, child: Text('Search')),
                      onTap: () {
                        // Handle item tap
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.explore),
                      title: FittedBox(
                          fit: BoxFit.scaleDown, child: Text('Explore')),
                      onTap: () {
                        // Handle item tap
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.video_collection),
                      title: FittedBox(
                          fit: BoxFit.scaleDown, child: Text('Reels')),
                      onTap: () {
                        // Handle item tap
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.message),
                      title: FittedBox(
                          fit: BoxFit.scaleDown, child: Text('Messages')),
                      onTap: () {
                        // Handle item tap
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.create),
                      title: FittedBox(
                          fit: BoxFit.scaleDown, child: Text('Create')),
                      onTap: () {
                        // Handle item tap
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: FittedBox(
                          fit: BoxFit.scaleDown, child: Text('Profile')),
                      onTap: () {
                        // Handle item tap
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.notifications),
                      title: FittedBox(
                          fit: BoxFit.scaleDown, child: Text('Notifications')),
                      onTap: () {
                        // Handle item tap
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(flex: 3, child: UserInfoViewBody(userDataArgs: userDataArgs))
        ],
      ),
    );
  }
}