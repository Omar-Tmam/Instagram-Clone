import 'package:go_router/go_router.dart';
import 'package:instagram_clone/Features/home_view/presentation/views/home_view.dart';
import 'package:instagram_clone/Features/user_view/presentation/views/user_info_view.dart';

abstract class AppRouter {
  static const kHomeView = '/';
  static const kUserInfoView = '/userInfoView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kUserInfoView,
        builder: (context, state) => const UserInfoView(),
      ),
    ],
  );
}
