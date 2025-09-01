import 'package:flutter/material.dart';
import 'package:instagram_clone/Core/widgets/adaptive_layout_widget.dart';
import 'package:instagram_clone/Features/home_view/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => HomeViewBody(),
        tabletLayout: (context) => SizedBox(),
        desktopLayout: (context) => SizedBox(),
      ),
    );
  }
}
