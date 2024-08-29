import 'package:firebase_auth/firebase_auth.dart';

import 'models/models.dart';

abstract class UserRepository {
  Stream<User?> get user; //emite eventos
  Future<MyUser> signUp(MyUser myUser, String password);
  Future<void> setUserData(MyUser user);
  Future<void> signIn(String email, String password);
}
