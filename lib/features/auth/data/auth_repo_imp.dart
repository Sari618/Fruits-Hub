import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/server_failure.dart';
import 'package:fruits_hub/core/services/cutsom_exception.dart';
import 'package:fruits_hub/core/services/fire_base_auth_service.dart';
import 'package:fruits_hub/features/auth/data/models/user_model.dart';
import 'package:fruits_hub/features/auth/domain/entites/user_entity.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImp extends AuthRepo {
  final FireBaseAuthService fireBaseAuthService;

  AuthRepoImp({required this.fireBaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(String email, String password, String name) async{
    try {
  var user = await fireBaseAuthService.createUserWithEmailAndPassword(email, password);
  return right(UserModel.fromFireBaseUser(user));
} on CutsomException catch (e) {
  return left(ServerFailure(e.message));
}catch (e) {
  return left(ServerFailure('an error occured. Please try again later'));
}

    
  }

}