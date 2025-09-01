import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:instagram_clone/Core/utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        log('window width = ${constraints.maxWidth}');
        if (constraints.maxWidth < SizeConfig.tablet) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < SizeConfig.desktop) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
