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
      return AuthExceptionHandler.handleException(e);
    }
  }

  Future signUpWithEmailAndPassword(final email, final password) async {
    try {
      final result = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = result.user;
      return UserModel(userId: user!.uid);
    } catch (e) {
      return AuthExceptionHandler.handleException(e);
    }
  }

  Future resetPassword(final email) async {
    try {
      return await _firebaseAuth.sendPasswordResetEmail(email: email);
    } catch (e) {
      return AuthExceptionHandler.handleException(e);
    }
  }

  Future signOut() async {
    try {
      return await _firebaseAuth.signOut();
    } catch (e) {
      return AuthExceptionHandler.handleException(e);
    }
  }
}
