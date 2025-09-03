import 'package:instagram_clone/Features/user_view/data/models/posts_model/posts_model.dart';
import 'package:instagram_clone/Features/user_view/data/models/user_followers_model/user_followers_model.dart';
import 'package:instagram_clone/Features/user_view/data/models/user_info_model/user_info_model.dart';

class UserDataArgs {
  final UserInfoModel userInfoModel;
  final UserFollowersModel userFollowersModel;
  final PostsModel postsModel;

  UserDataArgs({
    required this.userInfoModel,
    required this.userFollowersModel,
    required this.postsModel,
  });
}
