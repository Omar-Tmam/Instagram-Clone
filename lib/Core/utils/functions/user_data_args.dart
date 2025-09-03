import 'package:instagram_clone/Features/user_view/data/models/posts_model/posts_model.dart';
import 'package:instagram_clone/Features/user_view/data/models/reels_model/reels_model.dart';
import 'package:instagram_clone/Features/user_view/data/models/tag_model/tag_model.dart';
import 'package:instagram_clone/Features/user_view/data/models/user_followers_model/user_followers_model.dart';
import 'package:instagram_clone/Features/user_view/data/models/user_info_model/user_info_model.dart';

class UserDataArgs {
  final UserInfoModel userInfoModel;
  final UserFollowersModel userFollowersModel;
  final PostsModel postsModel;
  final ReelsModel reelsModel;
  final TagModel tagModel;

  UserDataArgs({
    required this.tagModel,
    required this.reelsModel,
    required this.userInfoModel,
    required this.userFollowersModel,
    required this.postsModel,
  });
}
