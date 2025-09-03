import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:instagram_clone/Core/errors/failures.dart';
import 'package:instagram_clone/Features/user_view/data/models/posts_model/posts_model.dart';
import 'package:instagram_clone/Features/user_view/data/models/reels_model/reels_model.dart';
import 'package:instagram_clone/Features/user_view/data/models/user_followers_model/user_followers_model.dart';
import 'package:instagram_clone/Features/user_view/data/models/user_info_model/user_info_model.dart';
import 'package:instagram_clone/Features/user_view/data/repos/user_repo/user_repo.dart';

part 'user_info_state.dart';

class UserInfoCubit extends Cubit<UserInfoState> {
  UserInfoCubit(this.userRepo) : super(UserInfoInitial());
  final UserRepo userRepo;

  Future<void> getUserInfo({required String userId}) async {
    emit(UserInfoLoading());

    // نشغل 4 دوال مع بعض
    final results = await Future.wait([
      userRepo.getUserInfo(userId: userId),
      userRepo.getUserFollowers(userId: userId),
      userRepo.getUserPosts(userId: userId),
      userRepo.getUserReels(userId: userId), 
    ]);

    // نعمل كاست للنتايج
    final userInfoResult = results[0] as Either<Failure, UserInfoModel>;
    final userFollowersResult = results[1] as Either<Failure, UserFollowersModel>;
    final userPostsResult = results[2] as Either<Failure, PostsModel>;
    final userReelsResult = results[3] as Either<Failure, ReelsModel>; 

    // نتعامل مع النتايج بالترتيب
    userInfoResult.fold(
      (failure) => emit(UserInfoFailure(failure.errMessage)),
      (userInfoModel) {
        userFollowersResult.fold(
          (failure) => emit(UserInfoFailure(failure.errMessage)),
          (userFollowersModel) {
            userPostsResult.fold(
              (failure) => emit(UserInfoFailure(failure.errMessage)),
              (postsModel) {
                userReelsResult.fold(
                  (failure) => emit(UserInfoFailure(failure.errMessage)),
                  (reelsModel) {
                    emit(UserInfoSuccess(
                      userInfoModel,
                      userFollowersModel,
                      postsModel,
                      reelsModel, 
                    ));
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}
