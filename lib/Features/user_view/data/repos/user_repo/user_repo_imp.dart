import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:instagram_clone/Core/errors/failures.dart';
import 'package:instagram_clone/Core/utils/api_service.dart';
import 'package:instagram_clone/Features/user_view/data/models/posts_model/posts_model.dart';
import 'package:instagram_clone/Features/user_view/data/models/reels_model/reels_model.dart';
import 'package:instagram_clone/Features/user_view/data/models/user_followers_model/user_followers_model.dart';
import 'package:instagram_clone/Features/user_view/data/models/user_info_model/user_info_model.dart';
import 'package:instagram_clone/Features/user_view/data/repos/user_repo/user_repo.dart';

class UserRepoImp implements UserRepo {
  final ApiService apiService;
  UserRepoImp(this.apiService);
  @override
  Future<Either<Failure, UserInfoModel>> getUserInfo(
      {required String userId}) async {
    try {
      var data = await apiService.get(
          endPoint: '/v1/info?username_or_id_or_url=$userId');
      return Right(UserInfoModel.fromJson(data));
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserFollowersModel>> getUserFollowers(
      {required String userId}) async {
    try {
      var data = await apiService.get(
          endPoint: '/v1/followers?username_or_id_or_url=$userId');
      return Right(UserFollowersModel.fromJson(data));
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, PostsModel>> getUserPosts(
      {required String userId}) async {
    try {
      var data = await apiService.get(
          endPoint: '/v1/posts?username_or_id_or_url=$userId');
      return Right(PostsModel.fromJson(data));
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, ReelsModel>> getUserReels(
      {required String userId}) async {
    try {
      var data = await apiService.get(
          endPoint: '/v1/reels?username_or_id_or_url=$userId');
      return Right(ReelsModel.fromJson(data));
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
