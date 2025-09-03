import 'package:dartz/dartz.dart';
import 'package:instagram_clone/Core/errors/failures.dart';
import 'package:instagram_clone/Features/user_view/data/models/posts_model/posts_model.dart';
import 'package:instagram_clone/Features/user_view/data/models/reels_model/reels_model.dart';
import 'package:instagram_clone/Features/user_view/data/models/tag_model/tag_model.dart';
import 'package:instagram_clone/Features/user_view/data/models/user_followers_model/user_followers_model.dart';
import 'package:instagram_clone/Features/user_view/data/models/user_info_model/user_info_model.dart';

abstract class UserRepo {
  Future<Either<Failure, UserInfoModel>> getUserInfo({required String userId});
  Future<Either<Failure, UserFollowersModel>> getUserFollowers(
      {required String userId});
  Future<Either<Failure, PostsModel>> getUserPosts({required String userId});
  Future<Either<Failure, ReelsModel>> getUserReels({required String userId});
  Future<Either<Failure, TagModel>> getUserTags({required String userId});
}
