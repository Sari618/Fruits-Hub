import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/core/services/cutsom_exception.dart';

class FireBaseAuthService {
  Future<User> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CutsomException('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CutsomException('The account already exists for that email.');
      } else {
        throw CutsomException('an error occured. Please try again later');
      }
    } catch (e) {
      throw CutsomException('an error occured. Please try again later');
    }
  }
}
