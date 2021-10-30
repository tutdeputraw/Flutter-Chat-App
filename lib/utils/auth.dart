part of 'utils.dart';

class AuthMethod {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future signInWithEmailAndPassword(final email, final password) async {
    try {
      UserCredential result = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = result.user;
      return UserModel(userId: user!.uid);
    } catch (e) {
      print(e.toString());
    }
  }

  Future signUpWithEmailAndPassword(final email, final password) async {
    try {
      UserCredential result = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      final user = result.user;
      return UserModel(userId: user!.uid);
    } catch (e) {
      print(e.toString());
    }
  }

  Future resetPassword(final email) async {
    try {
      return await _firebaseAuth.sendPasswordResetEmail(email: email);
    } catch (e) {
      print(e.toString());
    }
  }

  Future signOut() async {
    try {
      return await _firebaseAuth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }
}
