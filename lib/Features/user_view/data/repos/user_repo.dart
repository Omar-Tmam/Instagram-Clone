import 'package:dartz/dartz.dart';
import 'package:instagram_clone/Core/errors/failures.dart';
import 'package:instagram_clone/Features/user_view/data/models/user_info_model/user_info_model.dart';

abstract class UserRepo {
  Future<Either<Failure, UserInfoModel>> getUserInfo({required String userId});
}
