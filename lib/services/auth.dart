import 'package:e_commerce_app/model/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user object from firebase user
  UserClass? _userFromFirebaseUser(User? user){
    return user != null ? UserClass(uid: user.uid) : null;
  }

  // auth change stream
  Stream<UserClass?> get getUser{
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  // sign in anonomously
  Future signAnon() async{
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;

      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future sigOut()async{
    try {
    return await _auth.signOut();
    } catch (e) {
      return null;
    }
  }
}