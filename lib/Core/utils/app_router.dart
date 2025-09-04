import 'package:go_router/go_router.dart';
import 'package:instagram_clone/Core/utils/functions/user_data_args.dart';
import 'package:instagram_clone/Features/home_view/presentation/views/home_view.dart';
import 'package:instagram_clone/Features/user_view/data/models/reels_model/item.dart';
import 'package:instagram_clone/Features/user_view/presentation/views/user_info_view.dart';
import 'package:instagram_clone/Features/video_view/presentation/views/user_video_view.dart';

abstract class AppRouter {
  static const kHomeView = '/';
  static const kUserInfoView = '/userInfoView';
  static const kVideoInfoView = '/videoInfoView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kHomeView,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
          path: kUserInfoView,
          builder: (context, state) {
            return UserInfoView(userDataArgs: state.extra as UserDataArgs);
          }),
      GoRoute(
          path: kVideoInfoView,
          builder: (context, state) {
            return UserVideoView(item: state.extra as Item);
          }),
    ],
  );
}
