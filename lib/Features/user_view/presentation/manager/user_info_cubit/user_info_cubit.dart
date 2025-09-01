import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:instagram_clone/Features/user_view/data/models/user_info_model/user_info_model.dart';
import 'package:instagram_clone/Features/user_view/data/repos/user_repo.dart';

part 'user_info_state.dart';

class UserInfoCubit extends Cubit<UserInfoState> {
  UserInfoCubit(this.userRepo) : super(UserInfoInitial());
  final UserRepo userRepo;
  Future<void> getUserInfo({required String userId}) async {
    emit(UserInfoLoading());
    final result = await userRepo.getUserInfo(userId: userId);
    result.fold(
      (failure) => emit(UserInfoFailure(failure.errMessage)),
      (userInfo) => emit(UserInfoSuccess(userInfo)),
    );
  }
}
