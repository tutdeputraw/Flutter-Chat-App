part of 'helpers.dart';

class SignUpHelper {
  BuildContext _context;

  SignUpHelper(this._context);

  void userSignUp(username, email, password) {
    AuthMethod authMethod = AuthMethod();
    authMethod.signUpWithEmailAndPassword(email, password).then((value) {
      if (value.runtimeType == String) {
        CustomSnackBar(_context).showSnackbar(value);
      } else {
        SignInHelper(_context).userSignIn(email, password);
      }
    });
  }
}
