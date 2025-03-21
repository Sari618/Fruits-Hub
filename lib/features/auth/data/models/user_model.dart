import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/features/auth/domain/entites/user_entity.dart';

class UserModel  extends UserEntity{
  UserModel({required super.name, required super.email, required super.password, required super.uid});
  factory UserModel.fromFireBaseUser(User user) {
    return UserModel(
      name: user.displayName ?? '',
      email: user.email ?? '',
      password: '', // Firebase User does not provide password
      uid: user.uid,
    );
  }
  
}