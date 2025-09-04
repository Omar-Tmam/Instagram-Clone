import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_clone/Features/user_view/data/models/drawer_model.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<DrawerModel> drawerItems = [
      DrawerModel(
        text: 'Home',
        icon: Icons.home,
        onTap: () {
          context.pop();
        },
      ),
      DrawerModel(
        text: 'Search',
        icon: Icons.search,
        onTap: () {},
      ),
      DrawerModel(
        text: 'Explore',
        icon: Icons.explore,
        onTap: () {},
      ),
      DrawerModel(
        text: 'Reels',
        icon: Icons.video_collection,
        onTap: () {},
      ),
      DrawerModel(
        text: 'Messages',
        icon: Icons.message,
        onTap: () {},
      ),
      DrawerModel(
        text: 'Create',
        icon: Icons.create,
        onTap: () {},
      ),
      DrawerModel(
        text: 'Profile',
        icon: Icons.person,
        onTap: () {},
      ),
      DrawerModel(
        text: 'Notifications',
        icon: Icons.notifications,
        onTap: () {},
      ),
    ];

    return Drawer(
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
          Expanded(
            child: ListView.builder(
              itemCount: drawerItems.length,
              itemBuilder: (context, index) {
                final item = drawerItems[index];
                return ListTile(
                  leading: Icon(item.icon),
                  title: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(item.text),
                  ),
                  onTap: item.onTap,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
