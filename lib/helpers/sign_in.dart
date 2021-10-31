part of 'helpers.dart';

class SignInHelper {
  BuildContext _context;

  SignInHelper(this._context);

  void userSignIn(email, password) {
    AuthMethod authMethod = AuthMethod();
    authMethod.signInWithEmailAndPassword(email, password).then((value) {
      if (value.runtimeType == String) {
        CustomSnackBar(_context).showSnackbar(value);
      } else {
        UserSessionHelper().create(value.id);
      }
    });
  }
}
